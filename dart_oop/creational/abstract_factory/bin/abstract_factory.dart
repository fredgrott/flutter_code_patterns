

// ignore_for_file: avoid_print

import 'package:abstract_factory/abstract_factory.dart';

void main() {
  const mood = "sleepy";
  late DrinkFactory destination;

  switch (mood) {
    case "sleepy":
      destination = CoffeeShop();
      break;
    case "done":
      destination = Pub();
      break;
    default:
      print("I only have two moods...");
  }

  final myBeverage = destination.createDrink();
  myBeverage.pour();

  /*
     Pouring a refreshing coffee!
  */
}
