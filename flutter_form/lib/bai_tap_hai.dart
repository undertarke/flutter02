import 'package:flutter/material.dart';

class BaiTapHai extends StatefulWidget {
  const BaiTapHai({super.key});

  @override
  State<BaiTapHai> createState() => _BaiTapHaiState();
}

class _BaiTapHaiState extends State<BaiTapHai> {
  var result;
  var phepTinh;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result = "";
    phepTinh = "";
  }

  nutMayTinh(soNe, color, double hori) {
    return TextButton(
      onPressed: () {
        if (soNe == "AC") {
          setState(() {
            result = "";
          });
          return;
        }
       
          setState(() {
            result = concatenateWithOperator(result.toString(),soNe.toString());
          });
        
      },
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: hori - 5),
          child: Text(
            "$soNe",
            style: TextStyle(fontSize: 30, height: 0.7, color: Colors.white),
          ),
        ),
      ),
    );
  }

  nutKetQua(soNe, color, double hori) {
    return TextButton(
      onPressed: () {
        var ketQua = evaluateExpression(result);
        setState(() {
          phepTinh = result;
          result = ketQua;
        });
      },
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: hori - 5),
          child: Text(
            "$soNe",
            style: TextStyle(fontSize: 30, height: 0.7, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.list, color: Colors.orange),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "$phepTinh",
              style: TextStyle(fontSize: 35, color: Colors.grey),
            ),
            Text(
              "$result",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nutMayTinh("AC", Colors.grey, 20),
                nutMayTinh("÷", Colors.orangeAccent, 30),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutMayTinh("7", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("8", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("9", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("x", Colors.orangeAccent, 31),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutMayTinh("4", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("5", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("6", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("-", Colors.orangeAccent, 35),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutMayTinh("1", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("2", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("3", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh("+", Colors.orangeAccent, 31),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutMayTinh("📱", const Color.fromARGB(255, 50, 51, 51), 20),
                nutMayTinh("0", const Color.fromARGB(255, 50, 51, 51), 31),
                nutMayTinh(".", const Color.fromARGB(255, 50, 51, 51), 35),
                nutKetQua("=", Colors.orangeAccent, 31),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

dynamic evaluateExpression(String expression) {
  // Loại bỏ khoảng trắng
  expression = expression.replaceAll(' ', '');

  // Tách số và phép toán
  List<double> numbers = [];
  List<String> operators = [];
  String currentNumber = '';

  for (int i = 0; i < expression.length; i++) {
    if (isOperator(expression[i])) {
      if (currentNumber.isNotEmpty) {
        numbers.add(double.parse(currentNumber));
        currentNumber = '';
      }
      operators.add(expression[i]);
    } else {
      currentNumber += expression[i];
    }
  }
  // Thêm số cuối cùng
  if (currentNumber.isNotEmpty) {
    numbers.add(double.parse(currentNumber));
  }

  // Xử lý nhân và chia trước (ưu tiên cao)
  List<double> tempNumbers = [];
  List<String> tempOperators = [];
  tempNumbers.add(numbers[0]);

  for (int i = 0; i < operators.length; i++) {
    if (operators[i] == 'x' || operators[i] == '÷') {
      double nextNumber = numbers[i + 1];
      double currentResult = tempNumbers.removeLast();
      if (operators[i] == 'x') {
        tempNumbers.add(currentResult * nextNumber);
      } else {
        if (nextNumber == 0) {
          return "Không xác định";
        }
        tempNumbers.add(currentResult / nextNumber);
      }
    } else {
      tempNumbers.add(numbers[i + 1]);
      tempOperators.add(operators[i]);
    }
  }

  // Xử lý cộng và trừ
  double result = tempNumbers[0];
  for (int i = 0; i < tempOperators.length; i++) {
    if (tempOperators[i] == '+') {
      result += tempNumbers[i + 1];
    } else if (tempOperators[i] == '-') {
      result -= tempNumbers[i + 1];
    }
  }

  return result;
}

bool isOperator(String char) {
  return char == '+' || char == '-' || char == 'x' || char == '÷';
}
String concatenateWithOperator(String current, String next) {
  if (current.isEmpty) return next;
  
  final operators = ['+', '-', 'x', '÷'];
  final lastChar = current[current.length - 1];
  
  if (operators.contains(lastChar) && operators.contains(next)) {
    if (lastChar == next) {
      return current; // Không cho phép cộng liên tiếp hai phép tính trùng nhau
    }
    // Thay thế phép tính cuối bằng phép tính mới
    return current.substring(0, current.length - 1) + next;
  }
  
  return current + next;
}