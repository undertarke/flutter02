import 'package:flutter/material.dart';
import 'package:flutter_begin/bai_tap_column.dart';
import 'package:flutter_begin/bai_tap_mot.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // nhúng thư viện flutter để xài Widget

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
      home: Scaffold(backgroundColor: null, body: SafeArea(child: BaiTapMot())),
    );
  }
}

//buổi 13

// expand
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Container(color: Colors.yellow)),
        SizedBox(height: 10),
        Expanded(flex: 3, child: Container(color: Colors.red)),
        SizedBox(height: 10),

        Expanded(flex: 3, child: Container(color: Colors.yellow)),
      ],
    );
  }
}

// row
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 300,
//       color: Colors.red,
//       child: Row(
//         // mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [

//           Card(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text('card 1'),
//             ),
//           ),
//           Card(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text('card 2'),
//             ),
//           ),
//           Card(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text('card 3'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// buổi 12
// widget layout: column
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 400,
//       color: Colors.red,
//       child: Column(
//         // mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center ,
//         children: [
//           Card(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text('card 1'),
//             ),
//           ),
//           Card(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text('card 2'),
//             ),
//           ),
//           Card(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text('card 3'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Icon
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Icon( FontAwesomeIcons.facebook , size: 200,color: Colors.red,);
//   }
// }

// avatar
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(100),
//       child: Image.asset(
//         "assets/imgs/cat.jpg",
//         width: 200,
//       ),
//     );
//   }
// }

// cách lấy font
// widget Image
// jpg jpeg, png, gif
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       "assets/imgs/cat.jpg",
//       width: 400,
//       height: 300,
//       fit: BoxFit.fill,
//       errorBuilder: (context, error, stackTrace) {
//         return Image.asset("assets/imgs/not.png");
//       },
//     );
//   }
// }

// buổi 11
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(20),
//       color: Colors.red,

//       child: Padding(
//         padding: EdgeInsets.all(50),
//         child: Text("Hello !!!!", style: TextStyle(fontSize: 50)),
//       ),
//     );
//   }
// }

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
