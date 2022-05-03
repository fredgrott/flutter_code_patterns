class Me {
  static final Me _singleton = Me._internal();
  static const String _name = "Tyler";

  factory Me() {
    return _singleton;
  }

  static String get name => _name;

  @override
  String toString() => "Hello, my name is $name.";

  Me._internal();
}
