import 'package:flutter/material.dart'; // nhúng thư viện flutter để xài Widget

// 2 style
// material => android
// cupertino => iphone

// khởi động ứng dụng flutter
// Text => widget hiển thị

// widget template => MaterialApp
// widget Scaffold => giao điện dev
// widget SafeArea => cách trên và dưới 1 khoảng với taskbar thiết bị

// alt + shift + F
void main() {
  runApp(WidgetRoot());
}

// statelesswidget

// làm biếng => STL
// widget root (gốc)
class WidgetRoot extends StatelessWidget {
  const WidgetRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: null,
        body: SafeArea(child: MyWidgetB(message: "Minh Heo")),
      ),
    );
  }
}

class MyWidgetB extends StatelessWidget {
  var message;

  MyWidgetB({super.key, this.message});

  dynamic tinhTong(a, b) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    return Text("Hello flutter ${this.message}  ${tinhTong(4,7)}!!!!");
  }
}
