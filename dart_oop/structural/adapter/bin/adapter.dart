

import 'package:adapter/adapter.dart';

void main() {
  final adapter = Adapter();
  final result = adapter.call();

  assert(result == adapteeMessage);
}
