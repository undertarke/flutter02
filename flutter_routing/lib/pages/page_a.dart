import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    var message = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text("Page A:")),
      body: Column(
        children: [
          Text("Trang A: $message", style: TextStyle(fontSize: 50)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "page-b");
            },
            child: Text("Qua trang B"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
