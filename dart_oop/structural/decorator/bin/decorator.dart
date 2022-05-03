

// ignore_for_file: avoid_print

import 'package:decorator/decorator.dart';

void main() {
  final coffee = Coffee();
  final starbucksCoffee = StarbucksCoffeeDecorator();

  print("Coffee contains ${coffee.ingredients}. It costs \$${coffee.cost}");
  print(
      "Starbucks coffee contains ${starbucksCoffee.ingredients}. It costs \$${starbucksCoffee.cost}",);

  // Coffee contains coffee, milk, and sugar. It costs $0.85
  // Starbucks coffee contains coffee, milk, and sugar. It costs $4.25
}
