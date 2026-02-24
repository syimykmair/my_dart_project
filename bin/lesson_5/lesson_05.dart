import 'car.dart';
import 'person.dart';

void main() {
  int number = 8;
  // создание экземпляра класса (объекта)
  // Car - тип данных, myCar - название ссылочной переменной, Car(2020, 'red', 'Honda Crv') - вызов конструктора
  Car myCar = Car(2020, 'red', 'Honda Crv');
  print(myCar);
  myCar.displayInfo();
  // myCar.color = 'green';
  myCar.changeColor('green');
  myCar.displayInfo();

  Car friendsCar = Car(2023, 'white', 'Mercedes 220');
  friendsCar.displayInfo();

  friendsCar.drive();
  myCar.drive();
  myCar.honk(3);

  Car toyotaCar = Car.redToyota(2019);

  Person friend = Person('Alex', 25);
  // friend.setAge(-30);
  friend.age = -30;
  friend.introduce();
  // print('My friends name is ${friend.getName()}');
  print('My friends name is ${friend.name}');

  Car bestCar = Car.withOwner(2024, 'black', 'BMW M5', friend);

  friendsCar.owner = friend;
  // Person me = Person('Jane', 20);
  //         a = b
  myCar.owner = Person('Jane', 20);

  bestCar.displayInfo();
  myCar.displayInfo();
  friendsCar.displayInfo();

  print('End of program');
}
