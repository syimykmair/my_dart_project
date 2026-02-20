void main() {
  String myName='Syimyk';
  int myAge=22;
  String City='Bishkek';
  String myJob='developer';
  String myHobby='editing videos';
  print('Hello my name is $myName');
  print('I am $myAge years old and I live in $City');
  print('My profession is $myJob');
  print('In my free time, I enjoy $myHobby');

  int salary=5000;
  print('My yearly income: ${salary*12}USD.');
  print('My yearly income with 10% bonus: ${salary*12*1.10}USD.');

  String task3=" Knowledge is power, but practice makes perfect. ";
  print(task3);
  print(task3.trim());
  print(task3.toUpperCase());
  print(task3.contains('power'));
  print(task3.replaceAll('practice','experience'));

  int apples=30;
  int people=12;
  print('Each person gets ${apples~/people} apples.');
  print('Apples left: ${apples%people}.');

  int currentYear=2026;
  print('I was born in ${currentYear-myAge}.');

  var city='Bishkek';/*как я понял 'var' это такой тип данных
  который автоматически определяет к какому типу данных нужно относить содержимое*/
  final country='Kyrgyzstan';
  print('City": ${city}');
  print('Country: ${country}');
  city='Osh';
 /*country='USA'; Изменить содержимое ту нельзя так как
 команда 'final' указывает на конечное значение*/
 print('City": ${city}'); 


 //Извиняюсь, если мой русский не очень понятный). 
}