

import 'package:memento/memento.dart';

void main() {
  final me = Originator("Returned from store");
  me.state = "Placing car keys down";

  final locationOfKeys = me.saveToMemento();
  final memory = CareTaker();
  memory.memento = locationOfKeys;

  me.state = "Putting away groceries";
  me.state = "Noticed missing pickles";
  me.state = "Looking for car keys...";

  me.restoreFromMemento(memory.memento);
  me.state = "Going back to store for pickles";

  /*
    [Originator] Set state to Returned from store
    [Originator] Set state to Placing car keys down
    [Originator] Saving to memento...
    [Memento] State "Placing car keys down" has been saved!
    [Originator] Set state to Putting away groceries
    [Originator] Set state to Noticed missing pickles
    [Originator] Set state to Looking for car keys...
    [Originator] Restoring from memento...
    [Memento] Providing saved state "Placing car keys down"...
    [Originator] Restored to Placing car keys down.
    [Originator] Set state to Going back to store for pickles
  */
}
