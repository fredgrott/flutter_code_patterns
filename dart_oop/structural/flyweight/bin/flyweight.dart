

// ignore_for_file: avoid_print

import 'package:flyweight/flyweight.dart';

void main() {
  final doc = Document();

  doc.write(6, "t");
  doc.write(7, "u");
  doc.write(1, "A");
  doc.write(2, "y");
  doc.write(7, "s");
  doc.write(3, "b");
  doc.write(2, "o");
  doc.write(3, "a");
  doc.write(2, "u");
  doc.write(1, "l");
  doc.write(3, "s");
  doc.write(3, "e");
  doc.write(4, "a");
  doc.write(1, "l");
  doc.write(2, "r");
  doc.write(5, "b");
  doc.write(5, "e");
  doc.write(5, "l");
  doc.write(5, "o");
  doc.write(4, "r");
  doc.write(5, "n");
  doc.write(4, "e");
  doc.write(6, "o");
  doc.write(5, "g");

  doc.export();

  print("\r\nDocument wrote: ${doc.lettersWritten}.");
  print("Letters created: ${doc.lettersCreated}.");

  /*
    All
    your
    base
    are
    belong
    to
    us

    Document wrote: 24.
    Letters created: 13.
  */
}
