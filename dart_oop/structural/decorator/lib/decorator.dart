abstract class Beverage {
  double get cost;
  String get ingredients;
}

class Ingredient {
  double cost;
  String name;

  Ingredient(this.name, this.cost);

  @override
  String toString() => this.name;
}

Ingredient coffee = Ingredient("coffee", .25);
Ingredient milk = Ingredient("milk", .5);
Ingredient sugar = Ingredient("sugar", .1);

class Coffee implements Beverage {
  late final Set<Ingredient> _ingredients = {coffee, milk, sugar};
  @override
  double get cost => _ingredients.fold(0, (total, i) => total + i.cost);
  @override
  String get ingredients {
    final String stringIngredients =
        _ingredients.fold("", (str, i) => "$str${i.name}, ");
    final String trimmedString =
        stringIngredients.substring(0, stringIngredients.length - 2);
    final lastComma = trimmedString.lastIndexOf(",");
    final String replacement =
        ",".allMatches(trimmedString).length > 1 ? ", and" : " and";

    return trimmedString.replaceRange(lastComma, lastComma + 1, replacement);
  }
}

class StarbucksCoffeeDecorator implements Beverage {
  final Beverage _coffee = Coffee();
  @override
  double get cost => _coffee.cost * 5;
  @override
  String get ingredients => _coffee.ingredients;
}
