// ignore_for_file: overridden_fields, avoid_classes_with_only_static_members

class Volume {
  final int quantity;
  final String unit;

  Volume(this.quantity, this.unit);
  @override
  String toString() => "$quantity $unit";
}

abstract class Vessel {
  late Volume volume;
  late String liquid;
}

class Bucket extends Vessel {
  @override
  final Volume volume;

  Bucket(int q, String u) : volume = Volume(q, u);
  @override
  String toString() => "a $volume bucket full of $liquid";
}

class Cup extends Vessel {
  @override
  final Volume volume;

  Cup(int q, String u) : volume = Volume(q, u);
  @override
  String toString() => "a $volume cup full of $liquid";
}

enum Tiredness { rested, sleepy, barelyAlive, hasChildren }

class CoffeeVesselFactory {
  static Vessel vesselFor(Tiredness howTired) {
    Vessel vessel;
    switch (howTired) {
      case Tiredness.rested:
        vessel = Cup(100, "milliliter");
        break;
      case Tiredness.sleepy:
      case Tiredness.barelyAlive:
        vessel = Cup(500, "milliliter");
        break;
      case Tiredness.hasChildren:
        vessel = Bucket(5, "liter");
        break;
      default:
        vessel = Cup(200, "milliliter");
        break;
    }
    vessel.liquid = "coffee";
    return vessel;
  }
}
