// ignore_for_file: avoid_print, unnecessary_this

abstract class Receiver {
  Set<String> get actions;
}

abstract class Command {
  Receiver receiver;
  late String name;

  Command(this.receiver);

  @override
  String toString() => this.name;

  void execute();
}

class Invoker {
  List<String> history = [];
  void execute(Command cmd) {
    cmd.execute();
    history.add("[${DateTime.now()}] Executed $cmd");
  }

  @override
  String toString() =>
      history.fold("", (events, event) => "$events$event\r\n");
}

class TurnOffCommand extends Command {
  @override
  String name = "Turn off";
  TurnOffCommand(Light light) : super(light);
  @override
  void execute() {
    (receiver as Light).turnOff();
  }
}

class TurnOnCommand extends Command {
  @override
  String name = "Turn on";
  TurnOnCommand(Light light) : super(light);
  @override
  void execute() {
    (receiver as Light).turnOn();
  }
}

class Light implements Receiver {
  void turnOff() => print("Light off!");
  void turnOn() => print("Light on!");
  @override
  Set<String> get actions => {"off", "on"};
}

class LightSwitch {
  final Invoker _switch = Invoker();
  Light light;

  LightSwitch(this.light);

  String get history => _switch.toString();

  void perform(String action) {
    if (!light.actions.contains(action)) {
      return print("Uh...wait, wut?");
    }
    switch (action) {
      case "on":
        return _switch.execute(TurnOnCommand(light));
      case "off":
        return _switch.execute(TurnOffCommand(light));
    }
  }
}


