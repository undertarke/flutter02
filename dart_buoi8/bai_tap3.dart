import 'dart:math';

void main() {
  var calculator = Calculator();
  print(calculator.cong(2, 2));
  print(calculator.tru(2, 2));
  print(calculator.nhan(2, 2));
  print(calculator.chia(2, 0));
  print(calculator.luyThua(2, 2));
  print(calculator.canBacHai(4));
}

class Calculator {
  dynamic cong(x, y) {
    return x + y;
  }

  dynamic tru(x, y) {
    return x - y;
  }

  dynamic nhan(x, y) {
    return x * y;
  }

  dynamic chia(x, y) {
    if (y == 0) {
      print("NaN"); // Not a Number
      return;
    }
    return x / y;
  }

  dynamic luyThua(x, m) {
    return pow(x, m);
  }

  dynamic canBacHai(x) {
    return sqrt(x);
  }
}
