// ignore_for_file: unnecessary_getters_setters

class PizzaBuilder {
  late String _crust;
  late int _diameter;
  late Set<String> _toppings;

  PizzaBuilder(this._diameter);

  String get crust => _crust;
  set crust(String newCrust) {
    _crust = newCrust;
  }

  int get diameter => _diameter;
  set diameter(int newDiameter) {
    _diameter = newDiameter;
  }

  Set<String> get toppings => _toppings;
  set toppings(Set<String> newToppings) {
    _toppings = newToppings;
    _ensureCheese();
  }

  void _ensureCheese() {
    _toppings.add("cheese");
  }

  Pizza build() {
    return Pizza(this);
  }
}

class Pizza {
  late String _crust;
  late int _diameter;
  late Set<String> _toppings;

  Pizza(PizzaBuilder builder) {
    _crust = builder.crust;
    _diameter = builder.diameter;
    _toppings = builder.toppings;
  }

  String get crust => _crust;
  int get diameter => _diameter;
  String get toppings => _stringifiedToppings();
  String _stringifiedToppings() {
    final stringToppings = _toppings.join(", ");
    final lastComma = stringToppings.lastIndexOf(",");
    final replacement =
        ",".allMatches(stringToppings).length > 1 ? ", and" : " and";

    return stringToppings.replaceRange(lastComma, lastComma + 1, replacement);
  }

  @override
  String toString() {
    return 'A delicous $_diameter" pizza with $_crust crust covered in $toppings';
  }
}
