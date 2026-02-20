void main() {
  print('Hello World'); // Вывод текста
  print(5);
  print(4.25);

  // Комментарий
  /* Многострочный
  комментарий */

  String myName = 'Jack'; // строковый тип данных
  int myAge = 25; // целочисленный тип данных
  print(myAge);
  myAge = 26; // изменение значения переменной
  print(2026 - myAge); // вычисление года рождения
  print(myName);
  // myAge = 'twenty five'; // ошибка: нельзя присвоить строку переменной типа int
  double myHeight = 1.75; // число с плавающей точкой
  bool isTeacher = true; // логический тип данных
  print(isTeacher);

  String myJob; // объявление переменной без инициализации / без значения
  myJob = 'Developer'; // присвоение значения переменной
  print(myJob);
  myJob = 'Senior Developer'; // изменение значения переменной
  print(myJob);

  String myPetName1 = 'Buddy';
  String myPetName2 = 'Mittens';
  // String my pet name = 'Charlie'; // ошибка: пробел в имени переменной
  // String 1myPetName = 'Charlie'; // ошибка: имя переменной не может начинаться с цифры
  String my_pet_name =
      'Charlie'; // допустимый вариант с подчеркиваниями, но не рекомендуется

  // Конкатенация строк
  myName = 'Bob';
  String myFullName = myName + ' Smith'; // объединение строк
  print(myFullName); //
  // print('Мой возраст: ' + myAge); // ошибка: нельзя конкатенировать строку и число
  print(
    'Меня зовут $myFullName и мне $myAge лет',
  ); // использование интерполяции строк
  print('Я родился в 2026 - $myAge году');
  print('Я родился в ${2026 - myAge} году');
  int mySalary = 50000;
  print('Моя зарплата: ${mySalary}USD');

  print("Today I'm learning Dart!");
  print('Today I am learning "Dart"!');
  print('Today I\'m learning "Dart"!');
  print(myPetName1 + ' ' + myPetName2); // конкатенация строк

  // Строковые функции
  String sampleText = '    Hello, Dart!    ';
  print(sampleText.toUpperCase()); // преобразование к верхнему регистру
  print(sampleText.toLowerCase()); // преобразование к нижнему регистру
  print(sampleText.trim()); // удаление пробелов в начале и конце строки
  print(sampleText.contains('Dart')); // проверка наличия подстроки
  print(sampleText.contains('Python')); // проверка наличия подстроки
  print(sampleText.replaceAll('Dart', 'Flutter')); // замена подстроки
  print(sampleText.replaceAll('l', '***')); // замена подстроки

  print(1 + 4); // сложение
  print(10 - 3); // вычитание
  print(5 * 6); // умножение
  print(20 / 4); // деление
  print(20 ~/ 4); // целочисленное деление
  print(25 ~/ 4); // целочисленное деление
  print(25 % 4); // остаток от деления

  print(5 + 3 * 4 / 2 - 1); // приоритет операций
  print((5 + 3) * (4 / (2 - 1)));

  final double pi = 3.14159; // константа, значение которой нельзя изменить
  // pi = 3.14; // ошибка: нельзя изменить значение константы

  String? city;

  print(city);


  var price = 19.99;
  var country = 'Kyrgyzstan';

  
  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать
}
