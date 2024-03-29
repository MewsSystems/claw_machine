import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:ndef/record.dart';

import '../di.dart';
import 'card_reader.dart';

@Injectable(as: CardReader, env: [envSimulator])
class StubCardReader implements CardReader {
  const StubCardReader();

  @override
  Future<void> start(ValueSetter<IList<NDEFRecord>> onScanned) async {}

  @override
  void dispose() {}
}
