

// ignore_for_file: avoid_print

import 'package:proxy/proxy.dart';

void main() {
  final proxy = Proxy("yay");
  print("With our handy proxy, we call someMethod...\r\n");
  proxy.someMethod();
  print(
      "\r\nNotice that the proxy did not have an instance of ExpensiveClass, so it made one when required.",);
  print("Now if we call someMethod again...\r\n");
  proxy.someMethod();
  print("\r\nWe reuse the instance we made above!");
}
