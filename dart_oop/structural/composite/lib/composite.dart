// ignore_for_file: avoid_print

abstract class Thing {
  late String name;
  void doSomething();
}

class CompositeThing implements Thing {
  @override
  String name;
  final Set<Thing> _childThings = {};

  CompositeThing(this.name);

  void addChild(Thing child) {
    _childThings.add(child);
  }

  @override
  void doSomething() {
    print("\r\n** $name is doing something! ** \r\n");
    for (final thing in _childThings) {
      thing.doSomething();
    }
    print("\r\n** $name is all done. ** \r\n");
  }
}

class LeafThing implements Thing {
  @override
  String name;

  LeafThing(this.name);

  @override
  void doSomething() {
    print("*  $name!");
  }
}
