import 'package:flutter/material.dart';

class BaiTapMot extends StatefulWidget {
  const BaiTapMot({super.key});

  @override
  State<BaiTapMot> createState() => _BaiTapMotState();
}

class _BaiTapMotState extends State<BaiTapMot> {
  var color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 200, height: 200, color: color),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  color= Colors.red;
                });
              },
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
            TextButton(
              onPressed: () {
                 setState(() {
                  color= Colors.yellow;
                });
              },
              child: Container(width: 100, height: 100, color: Colors.yellow),
            ),
            TextButton(
              onPressed: () {
                 setState(() {
                  color= Colors.green;
                });
              },
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
          ],
        ),
      ],
    );
  }
}
