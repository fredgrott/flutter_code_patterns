

// ignore_for_file: avoid_print

import 'package:mediator/mediator.dart';

void main() {
  final curly = Attendee("Curly");
  final larry = Attendee("Larry");
  final moe = Attendee("I prefer not to disclose my name");
  final mixer = List<Attendee>.from([curly, larry, moe]);
  final publicAnnouncementSystem = Mediator(mixer);

  publicAnnouncementSystem.update("Do NOT eat the shrip tacos!");

  for (final person in mixer) {
    print('${person.name} heard "${person.state}".');
  }

  /*
    Curly heard "Do NOT eat the shrip tacos!".
    Larry heard "Do NOT eat the shrip tacos!".
    I prefer not to disclose my name heard "Do NOT eat the shrip tacos!".
  */
}
