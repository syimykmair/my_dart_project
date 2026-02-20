void main() {
  int totalCalls = 0;

  for (var i = 1; i <= 3; i++) {
    greet();
    totalCalls++;
  }

  Map<String, int> people = {'Alex': 25, 'Kairo': 22, 'Tima': 21};
  people.forEach((name, age) {
    introduce(name, age);
    totalCalls++;
  });

  addNumbers(3, 5);
  totalCalls++;

  // Просто список цен для расчета
  
  List<double> prices = [100, 100, 100];
  List<double> discounts = [0, 10, 10];
  List<double> taxes = [0, 0, 5];

  for (var i = 0; i < prices.length; i++) {
    double result = calculateDiscount(
      price: prices[i],
      discount: discounts[i],
      tax: taxes[i],
    );
    print('Final price: $result');
    totalCalls++;
  }

  print('Total function calls: $totalCalls');
}

double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}

void greet() {
  print('Hello! Welcome to Dart programming!');
}

void introduce(String name, int age) {
  print('My name is $name and I am $age years old.');
}

void addNumbers(int a, int b) {
  int sum = a + b;
  print('Sum of $a and $b is $sum');
}