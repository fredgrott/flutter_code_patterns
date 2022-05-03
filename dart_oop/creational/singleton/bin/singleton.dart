

// ignore_for_file: avoid_print

import 'package:singleton/singleton.dart';

void main() {
  final tyler = Me();
  final anotherTyler = Me();

  print(tyler);
  print(anotherTyler);

  final samenessCheck = identical(tyler, anotherTyler)
      ? "We are both the same ${Me.name}."
      : "We are NOT the same. I mean, just look at us.";
  print(samenessCheck);

  /*
    Hello, my name is Tyler.
    Hello, my name is Tyler.
    We are both the same Tyler.
  */
}
