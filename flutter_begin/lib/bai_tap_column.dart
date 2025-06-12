import 'package:flutter/material.dart';

class BaiTapColumn extends StatelessWidget {
  const BaiTapColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://i.pinimg.com/736x/ae/7b/8b/ae7b8bdc5a4ce2d97d744bc91e1300da.jpg",
                width: 200,
              ),
            ),
            Text(
              "Nguyễn Văn Mèo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(text: "Chữ đen"),
                  TextSpan(text: "Chữ đỏ"),
                  TextSpan(text: "Chữ xanh"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
