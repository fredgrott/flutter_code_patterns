// ignore_for_file: avoid_print

abstract class Loudspeaker {
  void announce(String message);
}

class LoudspeakerWithMuzak implements Loudspeaker {
  @override
  void announce(String message) => print("<soothing muzak playing> $message");
}

class LoudspeakerWithAlarm implements Loudspeaker {
  @override
  void announce(String message) => print("<BOO-OP BOO-OP> $message <BOO-OP>");
}

abstract class Factory {
  Loudspeaker loudspeaker = LoudspeakerWithMuzak();
  void announce(String message) => loudspeaker.announce(message);
}

class CoffeeRoaster extends Factory {
  int _temp = 200;
  bool get isTooHot => _temp >= 225;

  void turnGasValve() {
    loudspeaker.announce("Increasing gas!");
    _temp += 25;
    loudspeaker.announce("Temperature is now at $_temp");
  }
}
