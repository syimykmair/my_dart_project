class Person {
  final String _name;
  int _age;

  Person(this._name, this._age) {
    _wasBorn();
  }

  void _wasBorn() {
    print('Person $_name was born');
  }  

  // void setAge(int newAge) {
  //   if (newAge > 0) {
  //     _age = newAge;
  //   } else {
  //     print('Age can not be negative.');
  //   }
  // }

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print('Age can not be negative.');
    }
  }

  // String getName(){
  //   return _name;
  // }

  String get name => _name;

  int calculateBirthYear() {
    return 2026 - _age;
  }

  void introduce() {
    print(
      'I am $_name. I am $_age years old. I was born in ${calculateBirthYear()}',
    );
  }
}
