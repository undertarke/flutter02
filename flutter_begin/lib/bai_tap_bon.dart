import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapBon extends StatelessWidget {
  const BaiTapBon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "026 6119123",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text("Add Number", style: TextStyle(color: Colors.lightBlue)),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            nutDienThoai("1", " "),
            nutDienThoai("2", "A B C"),
            nutDienThoai("3", "D E F"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            nutDienThoai("4", "G H I"),
            nutDienThoai("5", "G H I"),
            nutDienThoai("6", "G H I"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            nutDienThoai("7", "G H I"),
            nutDienThoai("8", "G H I"),
            nutDienThoai("9", "G H I"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            nutDienThoai("*", "G H I"),
            nutDienThoai("0", "G H I"),
            nutDienThoai("#", "G H I"),
          ],
        ),

        GoiDienWidget(),
      ],
    );
  }
}

// tách function (hàm)
dynamic nutDienThoai(soNe, kyTu) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        children: [
          Text("$soNe", style: TextStyle(fontSize: 30, height: 0.7)),

          Text("$kyTu", style: TextStyle(fontSize: 10)),
        ],
      ),
    ),
  );
}

// tách ra widget trạng thái (stateLessWidget)

class GoiDienWidget extends StatelessWidget {
  const GoiDienWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          children: [Icon(FontAwesomeIcons.phone, color: Colors.white)],
        ),
      ),
    );
  }
}
