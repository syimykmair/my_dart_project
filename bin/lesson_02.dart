import 'dart:io'; // для работы с консолью

void main() {
  int tempeture = 4;
  bool isSnowy = true;

  if (tempeture > 0) {
    // true
    final parkTitle = 'Парк Горького';
    print('Сегодня в $parkTitle будет много людей');
  }

  if (tempeture > 15) {
    // false
    print('Сегодня будет тепло');
  }

  if (tempeture == 20) {
    // false
    print('Сегодня будет 20 градусов');
  } else {
    print('Сегодня не будет 20 градусов');
  }

  if (isSnowy) {
    // true
    print('Идет снег');
  } else {
    print('Снега нет');
  }

  // else { // не может быть без if
  //   print('Что-нибудь');
  // }

  tempeture = tempeture + 20; // tempeture += 20;
  if (tempeture > 35) {
    print('Погода жаркая');
  } else if (tempeture > 25) {
    print('Погода теплая');
  } else if (tempeture > 15) {
    print('Погода прохладная');
  } else if (tempeture > 0) {
    print('Погода холодная');
  } else {
    print('Погода морозная');
  }

  int numberOfStudents = 15;
  if (numberOfStudents > 20) {
    // false
    print('Едем на экскурсию');
    if (tempeture > 20) {
      // nested if
      print('Берем купальники');
    } else {
      print('Берем теплые вещи');
    }
  }

  // boolean algebra
  // && - логическое И (AND)

  if (isSnowy && numberOfStudents != 10) {
    // true && true -> true
    print('Пойдем в Гигс');
  }
  if (tempeture > 30 && tempeture < 40) {
    // false && true -> false
    print('Идем на пляж');
  }

  // || - логическое ИЛИ (OR)
  if (isSnowy || tempeture < 0) {
    // true || false -> true
    print('Пойдем в школу');
  }

  if (tempeture < 0 || numberOfStudents < 5) {
    // false || false -> false
    print('Остаемся дома');
  }

  if (tempeture > 15 && tempeture < 20 ||
      numberOfStudents > 25 && numberOfStudents < 30 ||
      isSnowy) {
    // true && false || false && true || true =
    // 1 * 0 + 0 * 1 + 1 = 0 + 0 + 1 = 1 -> true
    print('Идем на шоппинг');
  }

  if (tempeture > 15 &&
      (tempeture < 20 || numberOfStudents > 25) &&
      (numberOfStudents < 30 || isSnowy)) {
    // true && (false || false) && (true || true) =
    // 1 * (0 + 0) * (1 + 1) = 1 * 0 * 1 = 0 -> false
    print('Идем в парк');
  }

  // ! - логическое НЕ (NOT)
  isSnowy = false;
  // if (isSnowy) { // false
  // } else {
  //   print('Катаемся на роликах');
  // }

  if (!isSnowy) {
    // !false -> true
    print('Катаемся на роликах');
  }

  int number = 5;
  switch (number) {
    case 1:
      print('Один');
      break;
    case 2:
      print('Два');
      break;
    case 3:
      print('Три');
      break;
    default:
      print('Число не 1 не 2 и не 3');
      break;
  }

  //Type casting - приведение типов

  String age = '20';
  print(2026 - int.parse(age)); // 2026 - 20 = 2006
  int price = 80;
  // print('Цена мышки:' + price); // ошибка, нельзя сложить строку и число
  print('Цена мышки: ' + price.toString()); // 'Цена мышки:80
  print('Цена мышки: ${price.toDouble()}'); // 'Цена мышки: 80.0'
  double priceWithTax = price * 1.2; // 80 * 1.2 = 96.0
  print(
    'Цена мышки с налогом: ${priceWithTax.toInt()}',
  ); // 'Цена мышки с налогом: 96'

  // Ввод информации с консоли
  print('Введите ваше имя:');
  String? name = stdin.readLineSync();
  // String name = stdin.readLineSync()!; // если мы уверены, что пользователь введет имя, то можно использовать оператор ! для указания, что значение не будет null
  print('Привет, $name!');

  print('Введите число 1:');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Введите число 2:');
  int number2 = int.parse(stdin.readLineSync()!);
  // print('Сумма чисел: ${number1 + number2}');
  print('Введите операцию (+, -, *, /):');
  String operation = stdin.readLineSync()!;
  switch (operation) {
    case '+':
      print('Сумма чисел: ${number1 + number2}');
      break;
    case '-':
      print('Разность чисел: ${number1 - number2}');
      break;
    case '*':
      print('Произведение чисел: ${number1 * number2}');
      break;
    case '/':
      print('Частное чисел: ${number1 / number2}');
      break;
    default:
      print('Некорректная операция');
      break;
  }
}
