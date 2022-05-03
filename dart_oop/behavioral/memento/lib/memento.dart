// ignore_for_file: avoid_print

class Memento {
  late String _state;

  Memento(String s) {
    _state = s;
    print('[Memento] State "$s" has been saved!');
  }

  String get state {
    print('[Memento] Providing saved state "$_state"...');
    return _state;
  }
}

class Originator {
  late String _state;

  // NOTE: This uses the state setter on init to get a handy print
  Originator(String s) {
    state = s;
  }

  String get state => _state;
  set state(String newState) {
    _state = newState;
    print("[Originator] Set state to $newState");
  }

  Memento saveToMemento() {
    print("[Originator] Saving to memento...");
    return Memento(state);
  }

  void restoreFromMemento(Memento m) {
    print("[Originator] Restoring from memento...");
    _state = m.state;
    print("[Originator] Restored to $state.");
  }
}

class CareTaker {
  late Memento memento;
}
