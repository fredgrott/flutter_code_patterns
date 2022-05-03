abstract class Expression {
  late Number number;
  void interpret(int value);
}

class Add implements Expression {
  Number number;
  Add(this.number);
  void interpret(int value) {
    print("Adding $value...");
    number.value += value;
  }
}

class Subtract implements Expression {
  Number number;
  Subtract(this.number);
  void interpret(int value) {
    print("Subtracting $value...");
    number.value -= value;
  }
}

class Number {
  late int value;
  Number(int value) {
    print("Starting with $value...");
    this.value = value;
  }
}
