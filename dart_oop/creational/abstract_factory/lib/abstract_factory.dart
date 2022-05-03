// ignore_for_file: avoid_print

abstract class Drinkable {
  void pour();
}

class Beer implements Drinkable {
  @override
  void pour() {
    print("Pouring a delicious beer!");
  }
}

class Coffee implements Drinkable {
  @override
  void pour() {
    print("Pouring a refreshing coffee!");
  }
}

abstract class DrinkFactory {
  Drinkable createDrink();
}

class Pub implements DrinkFactory {
  @override
  Drinkable createDrink() {
    return Beer();
  }
}

class CoffeeShop implements DrinkFactory {
  @override
  Drinkable createDrink() {
    return Coffee();
  }
}
