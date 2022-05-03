

// ignore_for_file: avoid_print

import 'package:iterator/iterator.dart';

void main() {
  final rainbowColors = RainbowIterator();
  while (rainbowColors.moveNext()) {
    print(rainbowColors.current);
  }

  /*
    Red
    Orange
    Yellow
    Green
    Blue
    Indigo
    Violet
  */
}
