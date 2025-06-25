import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapNam extends StatelessWidget {
  const BaiTapNam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(FontAwesomeIcons.list, color: Colors.orange),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "805,97947-411.222",
              style: TextStyle(fontSize: 35, color: Colors.grey),
            ),
            Text(
              "805,97947-411",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nutDienThoai("AC", Colors.grey, 20),
                nutDienThoai("+/-", Colors.grey, 20),
                nutDienThoai("%", Colors.grey, 30),
                nutDienThoai("÷", Colors.orangeAccent, 30),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutDienThoai("7", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("8", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("9", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("x", Colors.orangeAccent, 31),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutDienThoai("4", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("5", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("6", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("-", Colors.orangeAccent, 35),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutDienThoai("1", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("2", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("3", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai("+", Colors.orangeAccent, 31),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                nutDienThoai("📱", const Color.fromARGB(255, 50, 51, 51), 20),
                nutDienThoai("0", const Color.fromARGB(255, 50, 51, 51), 31),
                nutDienThoai(".", const Color.fromARGB(255, 50, 51, 51), 35),
                nutDienThoai("=", Colors.orangeAccent, 31),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// tách function (hàm)
dynamic nutDienThoai(soNe, color, double hori) {
  return Card(
    color: color,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: hori),
      child: Text(
        "$soNe",
        style: TextStyle(fontSize: 30, height: 0.7, color: Colors.white),
      ),
    ),
  );
}
