import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:ndef/ndef.dart';

void main() {
  test('decodes properly formatted message', () {
    const data = [209, 1, 8, 84, 2, 101, 110, 105, 100, 100, 113, 100];

    final messages = decodeRawNdefMessage(Uint8List.fromList(data));

    expect(
      messages.first,
      isA<TextRecord>().having((p0) => p0.text, 'text', 'iddqd'),
    );
  });
}
