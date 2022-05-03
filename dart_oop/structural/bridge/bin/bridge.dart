
import 'package:bridge/bridge.dart';

void main() {
  final roaster = CoffeeRoaster();
  for (var i = 0; i < 3; i++) {
    roaster.turnGasValve();
    if (roaster.isTooHot) {
      roaster.loudspeaker = LoudspeakerWithAlarm();
    }
  }

  /*
    <soothing muzak playing> Increasing gas!
    <soothing muzak playing> Temperature is now at 225
    <BOO-OP BOO-OP> Increasing gas! <BOO-OP>
    <BOO-OP BOO-OP> Temperature is now at 250 <BOO-OP>
    <BOO-OP BOO-OP> Increasing gas! <BOO-OP>
    <BOO-OP BOO-OP> Temperature is now at 275 <BOO-OP>
  */
}
