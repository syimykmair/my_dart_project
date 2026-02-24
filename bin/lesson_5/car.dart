import 'person.dart';
class Car {
  // свойства / аттрибуты / поля
  int year;
  String color;
  String model;
  Person? owner;

  // конструктор
  // Car(int year, String color, String model) {
  //   this.year = year;
  //   this.color = color;
  //   this.model = model;
  // }

  // конструктор с инициализирующим списком
  // Car(int year, String color, String model)
  //   : this.year = year,
  //     this.color = color,
  //     this.model = model;

  // Конструктор с параметрами, присваивающимися напрямую
  Car(this.year, this.color, this.model);

  Car.redToyota(this.year) : color = 'red', model = 'Toyota Camry';
  Car.withOwner(this.year, this.color, this.model, this.owner);

  // методы
  void drive() {
    print('Car $model is driving');
  }

  void changeColor(String newColor) {
    print('Car changed color $color -> $newColor');
    color = newColor;
  }

  void displayInfo() {
    String ownerInfo = '';
    if (owner != null) {
      ownerInfo = owner!.name;
    }
    print(
      'MODEL: ${model} COLOR: ${color} YEAR: ${year} OWNER INFO: $ownerInfo',
    );
  }

  void honk(int numberOfHonks) {
    int counter = 0;
    while (counter < numberOfHonks) {
      print('Beeep');
      counter++;
    }
  }
}
