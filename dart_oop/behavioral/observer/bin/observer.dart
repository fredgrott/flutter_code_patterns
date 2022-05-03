

import 'package:observer/observer.dart';

void main() {
  final me = Observer("Tyler");
  final mrCoffee = CoffeeMaker(List.from([me]));
  final myWife = Observer("Kate");
  mrCoffee.registerObserver(myWife);
  mrCoffee.brew();
  /*
    Brewing the coffee...
    [2019-06-18T07:30:04.397518] Hey Tyler, coffee's done!
    [2019-06-18T07:30:04.397518] Hey Kate, coffee's done!
  */
}
