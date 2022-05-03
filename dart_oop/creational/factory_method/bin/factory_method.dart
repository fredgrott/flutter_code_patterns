
// ignore_for_file: avoid_print

import 'package:factory_method/factory_method.dart';

void main() {
  final sleepyVessel = CoffeeVesselFactory.vesselFor(Tiredness.sleepy);
  final kidVessel = CoffeeVesselFactory.vesselFor(Tiredness.hasChildren);

  // A sleepy person would like a 500 milliliter cup full of coffee.
  print("A sleepy person would like $sleepyVessel.");
  // A person with children NEEDS a 5 liter bucket full of coffee.
  print("A person with children NEEDS $kidVessel.");
}
