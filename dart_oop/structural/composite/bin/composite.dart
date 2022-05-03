

import 'package:composite/composite.dart';

void main() {
  final compositeParent = CompositeThing("Cat in the Hat");
  final compositeChild1 = CompositeThing("Thing 1");
  final compositeChild2 = CompositeThing("Thing 2");

  final leaf1_1 = LeafThing("Frustrate fish");
  final leaf1_2 = LeafThing("Knock down vases");
  final leaf2_1 = LeafThing("Ruin mom's dress");
  final leaf2_2 = LeafThing("Clean up");

  compositeChild1.addChild(leaf1_1);
  compositeChild1.addChild(leaf1_2);

  compositeChild2.addChild(leaf2_1);
  compositeChild2.addChild(leaf2_2);

  compositeParent.addChild(compositeChild1);
  compositeParent.addChild(compositeChild2);

  compositeParent.doSomething();

  /*
   ** Cat in the Hat is doing something! **


    ** Thing 1 is doing something! **

    *  Frustrate fish!
    *  Knock down vases!

    ** Thing 1 is all done. **


    ** Thing 2 is doing something! **

    *  Ruin mom's dress!
    *  Clean up!

    ** Thing 2 is all done. **


    ** Cat in the Hat is all done. **
  */
}
