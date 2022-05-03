

// ignore_for_file: avoid_print

import 'package:interpreter/interpreter.dart';

void main() {
  final number = Number(0);
  final adder = Add(number);
  final subtracter = Subtract(number);

  adder.interpret(100);
  subtracter.interpret(60);
  adder.interpret(2);

  assert(number.value == 42);
  print("And the result is ${number.value}!");
}
