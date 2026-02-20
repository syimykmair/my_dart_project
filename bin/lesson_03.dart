import 'dart:io';

void main() {
  // Цикл for - используется для повторения блока кода определенное количество раз
  for (var i = 1; i <= 5; i = i + 1) {
    print('Step $i');
  }

  print('------------------');
  var number = 7;
  for (var i = 1; i <= 10; i++) {
    // i = i + 1 - инкремент
    print('$number x $i = ${i * number}');
  }

  print('------------------');
  number = 5;
  for (var i = 10; i >= 1; i--) {
    // i = i - 1 - декремент
    print('$number x $i = ${i * number}');
  }

  print('------------------');
  number = 9;
  for (var i = 10; i >= 2; i -= 2) {
    // i = i - 2 - декремент на 2
    print('$number x $i = ${i * number}');
  }

  // while - используется для повторения блока кода, пока условие истинно
  int count = 0;
  while (count <= 5) {
    print('Count is $count');
    count++;
    print('Square is ${count * count}');
  }

  var myStr = '#';
  while (myStr.length <= 7) {
    print(myStr);
    myStr += '#';
  }

  // do-while - используется для повторения блока кода, пока условие истинно, но гарантирует выполнение блока кода хотя бы один раз
  int doCount = 0;
  do {
    print('Do-While Count is: $doCount');
    doCount++;
  } while (doCount >= 5);

  doCount = 0;
  while (doCount >= 5) {
    print('While Count is: $doCount');
    doCount++;
  }

  // Вложенные циклы - цикл внутри цикла
  for (var i = 1; i <= 3; i++) {
    print('Outer loop iteration: $i');
    for (var j = 1; j <= 2; j++) {
      print('  Inner loop iteration: $j');
    }
  }

  // Списки (List) - упорядоченные коллекции элементов, которые могут быть изменены, индексируются и могут содержать дубликаты
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print(fruits);
  print('I love ${fruits[0]} and ${fruits[2]}');
  fruits[1] = 'Blueberry';
  print(fruits);
  // fruits[5] = 'Mango'; // Ошибка: RangeError (index): Invalid value: Not in range 0..2, inclusive: 5
  // print(fruits);
  fruits.add('Mango'); // Добавляем элемент в конец списка
  print(fruits);
  fruits.insert(1, 'Strawberry'); // Вставляем элемент на определенную позицию
  print(fruits);
  fruits.removeAt(2); // Удаляем элемент по индексу
  print(fruits);
  fruits.add('Apple'); // Добавляем элемент в конец списка
  print(fruits);
  fruits.remove('Apple'); // Удаляем элемент по значению
  print(fruits);
  fruits.add('Grapes'); // Добавляем элемент в конец списка
  print(fruits);
  fruits.removeLast(); // Удаляем последний элемент списка
  print(fruits);

  // Словари (Map) - коллекции пар ключ-значение, где каждый ключ уникален, а значения могут быть любыми типами данных
  Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
  print(ages);
  print(
    'Alice is ${ages['Alice']} years old. Bob is ${ages['Bob']} years old.',
  );
  ages['Alice'] = 31; // Обновляем значение по ключу
  print(ages);
  ages['David'] = 28; // Добавляем новую пару ключ-значение
  print(ages);
  ages.remove('Bob'); // Удаляем пару ключ-значение по ключу
  print(ages);
  print('In ages map, we have ${ages.length} entries.');

  // Множества (Set) - неупорядоченные коллекции уникальных элементов, которые не индексируются и не могут содержать дубликаты
  Set<String> colors = {'Red', 'Green', 'Blue'};
  print(colors);
  colors.add('Yellow'); // Добавляем элемент в множество
  print(colors);
  colors.remove('Green'); // Удаляем элемент из множества
  print(colors);
  colors.add(
    'Red',
  ); // Множество не позволяет дубликаты, поэтому 'Red' не будет добавлен снова
  print(colors);

  // Цикл for-each - используется для итерации по элементам коллекции, таких как списки, словари и множества
  for (var c in colors) {
    print('Color: $c');
  }

  print('Mango is in fruits: ${fruits.contains('Mango')}');

  for (var k in ages.keys) {
    print('$k is ${ages[k]} years old');
  }

  var numbers = [33, -45, 9, 78, -21, 58];
  for (var num in numbers) {
    if (num < 0) {
      break; // завершает выполнение цикла, если число отрицательное
    }
    print(num);
  }

  print('------------------');
  for (var num in numbers) {
    if (num < 0) {
      continue; // пропускает текущую итерацию, если число отрицательное
    }
    print(num);
  }

  var value;
  while (true) {
    print('Enter a number (or "q" to quit):');
    var input = stdin.readLineSync();
    if (input == 'q') {
      print('Exiting the loop.');
      break; // завершает выполнение цикла, если пользователь вводит 'q'
    }
    value = int.parse(input!);
    print('You entered: $value. ${value * 5} is five times that number.');
  }
}
