import 'package:dart_periphery/dart_periphery.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:ndef/ndef.dart';

import 'di.dart';

@Injectable(env: [envRPi])
class CardReader {
  bool _isDisposed = false;

  Future<void> start(ValueSetter<IList<NDEFRecord>> onScanned) async {
    print('Starting...');
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
    useLocalLibrary(CPU_ARCHITECTURE.arm64);
    final p = PN532(pn532ProtocolImpl: PN532I2CImpl())..setSamConfiguration();

    final uid = p.getPassivTargetId();
    print(uid);

    final List<int> result = [];

    for (int i = 4; i < 10; i++) {
      print(i);
      if ((i + 1) % 4 == 0) {
        print('Skipping...');
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
        print(data);

        if (data.every((element) => element == 0)) break;
        result.addAll(data);
      } catch (e) {
        print(e);
        break;
      }
    }

    print('done');
    print(result);

    final messages = decodeRawNdefMessage(Uint8List.fromList(result));
    print(messages);

    return messages;
  } catch (e) {
    print(e);
    return null;
  }
}
