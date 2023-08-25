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

  Future<void> start(ValueSetter<IList<NDEFRecord>> onScanned) async {
    while (!_isDisposed) {
      final records = await compute(_scan, null);
      if (records != null && !_isDisposed) {
        onScanned(records.toIList());
      }
    }
  }

  void dispose() {
    _isDisposed = true;
  }
}

List<NDEFRecord>? _scan(dynamic _) {
  try {
    useLocalLibrary(CpuArchitecture.arm64);
    final p = PN532(pn532ProtocolImpl: PN532I2CImpl())..setSamConfiguration();

    final uid = p.getPassivTargetId();

    final List<int> result = [];

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

    return decodeRawNdefMessage(Uint8List.fromList(result));
  } on Object catch (error) {
    _logger.info('Failed to read card: $error');

    return null;
  }
}
