// Привет Сэнсэй

void main() {
  // DRY - don't repeat yourself
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  calculatePerimeter('Аудитория 2', 6.4, 4.5);
  calculatePerimeter('Кухня', 2.5, 4);
  calculatePerimeter('Холл', 8.5, 10);

  int areaOfAuditory2 = calculateArea(6.4, 4.5);
  print('Площадь комнаты Аудитория 2: $areaOfAuditory2 кв.м.');

  int areaOfKitchen = calculateArea(2.5, 4);
  print('Площадь комнаты Кухня: $areaOfKitchen кв.м.');

  int areaOfHall = calculateArea(8.5, 10);
  print('Площадь комнаты Холл: $areaOfHall кв.м.');
  print('ОБЩАЯ ПЛОЩАДЬ: ${areaOfAuditory2 + areaOfKitchen + areaOfHall} кв.м.');

  var cost1 = calculateShippingCost(2, baseCost: 100, city: 'Бишкек');
  print('Стоимость доставки в Бишкек: $cost1');
  var cost2 = calculateShippingCost(5, city: 'Ош');
  print('Стоимость доставки в Ош: $cost2');

  print(globalVariable);
}

double calculateShippingCost(
  double weigth, {
  required String city,
  double baseCost = 300.0,
}) {
  // возвращаемая функция с именноваными параметрами
  double factor = 1.0;
  if (city != 'Бишкек') {
    factor = 1.5;
  }
  return weigth * baseCost * factor;
}

int calculateArea(double length, double width) {
  // возвращаемая функция с параметрами
  double area = length * width;
  return area.round();
}

void calculatePerimeter(String roomName, double length, double width) {
  // невозвращаемая функция с параметрами
  double perimeter = 2 * (length + width);
  print('Периметр комнаты $roomName: $perimeter метров');
}

void makeTea() {
  // невозвращаемая функция без параметров
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Залить кипятком');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
}

String globalVariable = 'Я шлобальная перменная';

void scopeExample(int paramVariable) {
  print(globalVariable);
  print(paramVariable);
  int localVariable = 8;
  print(localVariable);
  if (paramVariable > 0) {
    print(localVariable);
    int ifBlockVariable = 0;
    print(ifBlockVariable);
  }
  if (localVariable == 1) {
    int ifBlockVariable = 0;
    print(ifBlockVariable);
    print(globalVariable);
  }
  // print(ifBlockVariable);
}
