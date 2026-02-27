enum Color { black, white, darkBrown }

class Animal {
  static int _counter = 0;

  static void showCounter() {
    print('Animals created: $_counter');
  }

  static void resetCounter() {
    _counter = 0;
  }

  Color color;
  int age;

  Animal(this.color, this.age) {
    _counter++;
  }

  String displayInfo() {
    return 'COLOR: ${color.name} AGE: $age';
  }
}

class Cat extends Animal {
  Cat(super.color, super.age);
}

class Dog extends Animal {
  String commands;

  Dog(super.color, super.age, this.commands);

  void bark() {
    print('Dog says woof!');
  }

  @override
  String displayInfo() {
    return '${super.displayInfo()} COMMANDS: $commands';
  }
}

class FightingDog extends Dog {
  int wins;

  FightingDog(super.color, super.age, super.commands, this.wins);

  void fight() {
    print('Dog of color $color is fighting!');
  }

  @override
  String displayInfo() {
    return '${super.displayInfo()} WINS: $wins';
  }
}
