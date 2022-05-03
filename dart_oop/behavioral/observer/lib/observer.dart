// ignore_for_file: avoid_print

class Notification {
  String message;
  late DateTime timestamp;
  Notification(this.message, this.timestamp);
  Notification.forNow(this.message) {
    timestamp = DateTime.now();
  }
}

class Observable {
  late List<Observer> _observers;

  Observable([List<Observer>? observers]) {
    _observers = observers ?? [];
  }

  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  void notifyObservers(Notification notification) {
    for (final observer in _observers) {
      observer.notify(notification);
    }
  }
}

class Observer {
  String name;

  Observer(this.name);

  void notify(Notification notification) {
    print(
        "[${notification.timestamp.toIso8601String()}] Hey $name, ${notification.message}!",);
  }
}

class CoffeeMaker extends Observable {
  CoffeeMaker([List<Observer>? observers]) : super(observers);
  void brew() {
    print("Brewing the coffee...");
    notifyObservers(Notification.forNow("coffee's done"));
  }
}
