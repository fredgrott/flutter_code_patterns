

// ignore_for_file: avoid_print

import 'package:builder/builder.dart';

void main() {
  // Create a handy PizzaBuilder with an 8" diameter.
  final pizzaBuilder = PizzaBuilder(8);

  // Add some attributes to the builder.
  pizzaBuilder.crust = "deep dish";
  pizzaBuilder.toppings = {"pepperoni"};

  // Let's make a pizza!
  final plainPizza = Pizza(pizzaBuilder);
  print("Behold! $plainPizza.");
  assert(plainPizza.toString() ==
      'Behold! A delicous 8" pizza with deep dish crust covered in pepperoni and cheese.',);

  // Now to adjust some things for the next pizza...
  pizzaBuilder.crust = "gold plated";
  pizzaBuilder.diameter = 72;
  pizzaBuilder.toppings = {"anchovies", "caviar", "diamonds"};

  // The beauty of the build is you can quickly iterate and produce instances of a class.
  // For example, we have an early employee of the latest unicorn in line. So much disposable income!
  // Also note, we use the .build() function of the builder this time.
  final luxuriousPizza = pizzaBuilder.build();
  print("Wow! $luxuriousPizza? Someone is rich!");
  assert(luxuriousPizza.toString() ==
      'Wow! A delicous 72" pizza with gold plated crust covered in anchovies, caviar, diamonds, and cheese? Someone is rich!',);
}
