import 'animals.dart';

void main() {
  Animal.showCounter();

  Cat cat = Cat(Color.black, 2);
  print(cat.displayInfo());
  print('Our cat has a color - ${cat.color}');

  Dog dog = Dog(Color.white, 5, 'Sit, bark');
  dog.bark();
  print(dog.displayInfo());

  FightingDog fightingDog = FightingDog(Color.darkBrown, 1, 'fight', 8);
  print(fightingDog.displayInfo());
  fightingDog.bark();
  fightingDog.fight();

  Animal.showCounter();

  if(fightingDog.commands == 'figth'){
    print('This dog is dangerous');
  }

  
  if(fightingDog.color == Color.darkBrown){
    print('This dog is beautiful');
  }
  print('End');
}
