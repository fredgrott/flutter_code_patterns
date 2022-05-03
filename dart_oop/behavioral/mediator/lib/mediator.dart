// ignore_for_file: unnecessary_getters_setters

abstract class Stateful {
  late String _state;
  String get state => _state;
  set state(String newState) => _state = newState;
}

class Mediator {
  final List<Stateful> _parties;
  Mediator(this._parties);
  void update(String state) {
    for (final party in _parties) {
      party.state = state;
    }
  }
}

class Attendee extends Stateful {
  String name;
  Attendee(this.name);
}
