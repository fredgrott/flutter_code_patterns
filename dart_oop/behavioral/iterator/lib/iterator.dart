// NOTE: See https://api.dartlang.org/stable/2.4.0/dart-core/Iterator-class.html
// for details on Dart's Iterator class.

class RainbowIterator implements Iterator<dynamic> {
  final _colors = [
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Blue",
    "Indigo",
    "Violet"
  ];
  var _index = 0;
  @override
  String get current => _colors[_index++];
  @override
  bool moveNext() => _index < _colors.length;
}
