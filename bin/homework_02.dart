import 'dart:io';
void main (){
  // Задача №1 которую делал я сам
  print ('Введите возраст: ');
  int age = int.parse(stdin.readLineSync()!);
  print ('Введите температуру воздуха: ');
  int temp = int.parse(stdin.readLineSync()!);
  if ((age >=20 && age <= 45) && (temp>=-20 && temp<=30)){
    print('You can go for a walk.');
  }
   else if ((age < 20 ) && (temp>=0 && temp<=28)){
    print('You can go for a walk.');
  }
   else if ((age > 45) && (temp>=-10 && temp<=25)){
    print('You can go for a walk.');
  } else{ print('Stay home.');
}
/*потом я у нейронки узнал что можно было укоротить так 
if (
   (age >= 20 && age <= 45 && temp >= -20 && temp <= 30) ||
   (age < 20 && temp >= 0 && temp <= 28) ||
   (age > 45 && temp >= -10 && temp <= 25)
) {
  print('You can go for a walk.');
} else {
  print('Stay home.');
}
*/

//Задача №2
print ('Введите день: ');
  String day = stdin.readLineSync()!
      .toLowerCase(); // делаем все буквы маленькими

  switch (day) {
    case ('monday'):
    print('Its the start of the week!');
    break;
    case ('tuesday'):
    case('wednesday'):
    case ('thursday'):
    print('Keep going, almost weekend!');
    break;
    case ('friday'):
    print('Weekend is coming!');
    break;
    case ('saturday'):
    case ('sunday'):
    print('Enjoy your weekend!');
    break;
    default:
    print(' Invalid day.');
    break;
  }
  
   // Задача №3

  print('Введите пароль:');
  String password = stdin.readLineSync()!.trim();

 if (password.isEmpty) {
  print('Password cannot be empty.');
} else {
  if (password.length < 6) {
    print('Password too short.');
  } else {
    if (password == 'dart123') {
      print('Access granted.');
    } else {
      print('Wrong password.');
    }
  }
}

}