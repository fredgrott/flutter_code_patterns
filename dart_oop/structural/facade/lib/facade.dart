// ignore_for_file: avoid_print

class Grinder {
  final String _type;

  Grinder(this._type);

  void grind() {
    print("Grinding $_type!");
  }
}

class Maker {
  final String _type;

  Maker(this._type);

  void fill() {
    print("Filling the $_type maker!");
  }

  void retrieve() {
    print("Retrieving the $_type!");
  }

  void start() {
    print("Starting the $_type maker!");
  }
}

class Imbiber {
  final String _beverage;

  Imbiber(this._beverage);

  void drink() {
    print("Mmmmm...drinking $_beverage!");
  }
}

class MorningFacade {
  final _coffeeDrinker = Imbiber("coffee");
  final _coffeeGrinder = Grinder("coffee beans");
  final _coffeeMaker = Maker("coffee");

  void prepareCoffee() {
    print("\r\nPreparing the coffee...");
    _coffeeGrinder.grind();
    _coffeeMaker
      ..fill()
      ..start();
    print("Coffee is brewing!\r\n");
  }

  void drinkCoffee() {
    print("\r\nMust...have...coffee...");
    _coffeeMaker.retrieve();
    _coffeeDrinker.drink();
    print("This is damn fine coffee!");
  }
}
