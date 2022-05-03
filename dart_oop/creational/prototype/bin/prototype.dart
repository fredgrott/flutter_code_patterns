

// ignore_for_file: avoid_print

import 'package:prototype/prototype.dart';

void main() {
  final ogRect = Rectangle(0, 0, 100, 100);
  final cloneRect = ogRect.clone();
  final someOtherRect = Rectangle(0, 0, 100, 100);

  print("ogRect ${ogRect.cloneStatus}.");
  print("cloneRect ${cloneRect.cloneStatus}.");
  print("someOtherRect ${someOtherRect.cloneStatus}.");

  final String cloneIsClone =
      ogRect == cloneRect ? "is a clone of" : "is not a clone of";
  print("\r\ncloneRect $cloneIsClone ogRect.");

  final String someRectIsClone =
      ogRect == someOtherRect ? "is a clone of" : "is not a clone of";
  print("someOtherRect $someRectIsClone ogRect.");

  /*
    ogRect is an original gangster.
    cloneRect is a clone.
    someOtherRect is an original gangster.

    cloneRect is a clone of ogRect.
    someOtherRect is not a clone of ogRect.
  */
}
