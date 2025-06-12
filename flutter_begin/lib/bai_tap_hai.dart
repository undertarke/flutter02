import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTapHai extends StatelessWidget {
  const BaiTapHai({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Straberry Pavlova",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "Straberry Pavlova, Straberry Pavlova, Straberry Pavlova , Straberry Pavlova Straberry Pavlova",
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.solidStar),
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                    ],
                  ),

                  Text("170 reviews"),
                ],
              ),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.fire),
                  Icon(FontAwesomeIcons.brain),
                  Icon(FontAwesomeIcons.cookie),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("PRED:"), Text("COOK:"), Text("FEEDS:")],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("25min"), Text("1hr"), Text("4-6")],
              ),
            ],
          ),
        ),
        Expanded(flex: 2, child: Image.asset("assets/imgs/cat.jpg",fit: BoxFit.fill,)),
      ],
    );
  }
}
