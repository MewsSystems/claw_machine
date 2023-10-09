import 'dart:isolate';

import 'package:dart_periphery/dart_periphery.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:ndef/ndef.dart';

import '../di.dart';

final _logger = Logger((CardReader).toString());

@Injectable(env: [envRPi])
class CardReader {
  bool _isDisposed = false;
  SendPort? _sendPort;

  Future<void> start(ValueSetter<IList<NDEFRecord>> onScanned) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_scan, receivePort.sendPort);

    await for (final message in receivePort) {
      if (message is SendPort) {
        _sendPort = message;
      } else if (message is List<int>) {
        try {
          final records = decodeRawNdefMessage(Uint8List.fromList(message));
          if (!_isDisposed) {
            onScanned(records.toIList());
          }
        } on Object catch (error) {
          _logger.info('Failed to decode card: $error');
        }
      }
    }
  }

  void dispose() {
    _isDisposed = true;
    _sendPort?.send(null);
    _sendPort = null;
  }
}

Future<void> _scan(SendPort sendPort) async {
  Logger.root.onRecord.listen((it) => debugPrint(it.toString()));

  final receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  _logger.info('Starting.');
  final p = PN532(
    pn532ProtocolImpl: PN532I2CImpl(resetPin: 20, hardwareRequestPin: 16),
  )..setSamConfiguration();

  bool isDisposed = false;

  receivePort.listen((_) {
    isDisposed = true;
  });

  while (!isDisposed) {
    await Future<void>.delayed(const Duration(seconds: 1));
    try {
      _logger.info('Waiting for card.');
      final uid = p.getPassivTargetId();

      final List<int> result = [];

      _logger.info('Reading card.');
      for (int i = 4; i < 10; i++) {
        if ((i + 1) % 4 == 0) {
          continue;
        }

        try {
          p.mifareClassicAuthenticateBlock(
            uid.map(Uint8.new).toList(),
            Uint8(i),
            Uint8(0x60),
            [0xD3, 0xF7, 0xD3, 0xF7, 0xD3, 0xF7].map(Uint8.new).toList(),
          );
          final data = p.mifareClassicReadBlock(Uint8(i));

          result.addAll(data);

          final stop = data.indexOf(254);
          if (stop != -1) {
            break;
          }
        } on Object {
          break;
        }
      }

      result
        ..removeWhere((element) => element == 0)
        ..removeAt(0)
        ..removeAt(0)
        ..removeLast();

      _logger.info('Read card: $result');

      sendPort.send(result);
    } on Object catch (error) {
      _logger.info('Failed to read card: $error');
    }
  }
}
