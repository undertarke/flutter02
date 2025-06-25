import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapSau extends StatelessWidget {
  const BaiTapSau({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://i.pinimg.com/736x/76/45/0d/76450d8077a3761b26f20759ed2c3e8e.jpg",
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),

            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white, width: 5),
                ),
              ),
            ),
          ],
        ),

        Stack(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Image.network(
                      "https://i.pinimg.com/736x/76/45/0d/76450d8077a3761b26f20759ed2c3e8e.jpg",
                      width: 300,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      "Bãi biển Vũng Tàu !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Một trong những bãi biển xấu nhất thế giới !"),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Container(
                color: Colors.grey,
                child: Icon(FontAwesomeIcons.heart),
              ),
            ),
          ],
        ),

        Stack(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Image.network(
                      "https://i.pinimg.com/736x/76/45/0d/76450d8077a3761b26f20759ed2c3e8e.jpg",
                      width: 300,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      "Bãi biển Vũng Tàu !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Một trong những bãi biển xấu nhất thế giới !"),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Container(
                color: Colors.grey,
                child: Icon(FontAwesomeIcons.heart),
              ),
            ),
          ],
        ),

        Stack(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Image.network(
                      "https://i.pinimg.com/736x/76/45/0d/76450d8077a3761b26f20759ed2c3e8e.jpg",
                      width: 300,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      "Bãi biển Vũng Tàu !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Một trong những bãi biển xấu nhất thế giới !"),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Container(
                color: Colors.grey,
                child: Icon(FontAwesomeIcons.heart),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
