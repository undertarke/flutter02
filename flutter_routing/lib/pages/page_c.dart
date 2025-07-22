import 'package:flutter/material.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page C")),
      body: Column(
        children: [
          Text("Trang C", style: TextStyle(fontSize: 50)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "page-b");
            },
            child: Text("Quay lại trang B"),
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
