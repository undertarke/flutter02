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

class WidgetRoot extends StatelessWidget {
  const WidgetRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: null, body: SafeArea(child: MyWidget())),
    );
  }
}

// buổi 11

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      
      color: Colors.red,
      child: Text("Hello !!!!", style: TextStyle(fontSize: 50)),
    );
  }
}

// margin , padding

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 300,
//       color: Colors.orange,
//       child: Container(
//         margin: EdgeInsets.all(50),
//         padding: EdgeInsets.all(50),
//         color: Colors.green,
//         width: 100,
//         height: 100,
//         child: Text("HELLO"),
//       ),
//     );
//   }
// }

// container, center
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(10),
//       width: 300, //chiều rộng
//       height: 500, //chiều cao
//       decoration: BoxDecoration(
//         color: Colors.red, // màu nền
//         borderRadius: BorderRadius.circular(10), // bo góc
//       ),
//       child: Text("Hello world", style: TextStyle(fontSize: 50)),
//     );
//   }
// }

// buổi 10
// statelesswidget

// làm biếng => STL
// widget root (gốc)
// class WidgetRoot extends StatelessWidget {
//   const WidgetRoot({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: null,
//         body: SafeArea(child: MyWidgetB(message: "Minh Heo")),
//       ),
//     );
//   }
// }

// class MyWidgetB extends StatelessWidget {
//   var message;

//   MyWidgetB({super.key, this.message});

//   dynamic tinhTong(a, b) {
//     return a + b;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text("Hello flutter ${this.message}  ${tinhTong(4,7)}!!!!");
//   }
// }
