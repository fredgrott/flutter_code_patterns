abstract class Shape {
  late int x;
  late int y;
  Shape clone();
}

class Rectangle implements Shape {
  late int height;
  late int width;
  @override
  late int x;
  @override
  late int y;

  late int _hashCode;
  bool isClone = false;
  String get cloneStatus => isClone ? "is a clone" : "is an original gangster";

  Rectangle(this.height, this.width, this.x, this.y);

  Rectangle.fromSource(Rectangle source) {
    height = source.height;
    width = source.width;
    x = source.x;
    y = source.y;
    _hashCode = source.hashCode;
    isClone = true;
  }

  @override
  Rectangle clone() {
    return Rectangle.fromSource(this);
  }

  @override
  int get hashCode {
    // ignore: unnecessary_null_comparison
    if (_hashCode != null) return _hashCode;
    // ignore: join_return_with_assignment
    _hashCode = DateTime.now().millisecondsSinceEpoch;
    return _hashCode;
  }

  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    final Rectangle rect = other;
    return rect.isClone && rect.hashCode == hashCode;
  }
}
