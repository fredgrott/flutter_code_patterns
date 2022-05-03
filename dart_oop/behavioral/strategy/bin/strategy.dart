

// ignore_for_file: avoid_print

import 'package:strategy/strategy.dart';

void main() {
  final americano = AmericanoStrategy();
  final drip = DripStrategy();
  final mocha = MochaFrappuccinoStrategy();

  final me = CoffeeDrinker("Tyler", drip);
  final europeanBuddy = CoffeeDrinker("Pieter", americano);
  final myDaughter = CoffeeDrinker("Joanie", mocha);

  const String roastOfTheDay = "Italian";

  for (final person in [me, europeanBuddy, myDaughter]) {
    print("Hey ${person.name}, whatcha drinkin' over there?");
    print("I'm enjoying ${person.preferredDrink.announce(roastOfTheDay)}!\r\n");
  }

  /*
    Hey Tyler, whatcha drinkin' over there?
    I'm enjoying a drip coffee with Italian beans!

    Hey Pieter, whatcha drinkin' over there?
    I'm enjoying an Americano with Italian beans!

    Hey Joanie, whatcha drinkin' over there?
    I'm enjoying a delicious mocha frappuccion with Italian beans!
  */
}
