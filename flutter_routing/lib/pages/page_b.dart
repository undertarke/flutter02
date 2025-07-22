import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page B")),
      body: Column(
        children: [
          Text("Trang B", style: TextStyle(fontSize: 50)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "page-a");
            },
            child: Text("Quay lại trang A"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "page-c");
            },
            child: Text("Qua trang C"),
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
