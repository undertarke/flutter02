import 'package:flutter/material.dart';
import 'package:flutter_form/bai_tap_mot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // setState()
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: BaiTapMot())),
    );
  }
}

// buoi 20


// button
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         print("tôi đã dđược bấm");
//       },
      
//       child: Text("Elevated Buton"),
//       style: TextButton.styleFrom(
        
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.yellow,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//           side: BorderSide(color: Colors.blue,width: 5)
//         )
//       ),
//     );
//   }
// }


// lifecycle
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Child(title: "Hello world !!!!");
//   }
// }

// class Child extends StatefulWidget {
//   var title;
//   Child({super.key, this.title});

//   @override
//   State<Child> createState() => _ChildState();
// }

// class _ChildState extends State<Child> {
//   var title;

//   // chạy 1 lần duy nhất
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // gán giá trị mặt định cho các thuộc tính
//     title = "Hello world !!";
//     // dùng để kết nối BackEnd (gọi API)
//   }

//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//   }


//   @override
//   void didUpdateWidget(covariant Child oldWidget) {
//     // TODO: implement didUpdateWidget
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Text("${widget.title}", style: TextStyle(fontSize: 50));
//   }


//   @override
//   void deactivate() {
//     // TODO: implement deactivate
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   var title = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("$title", style: TextStyle(fontSize: 50)),
//         ListTile(
//           title: Text("+"),
//           onTap: () {
//             // gọi hàm build() chạy lại => rebuild
//             setState(() {
//               title += 1;
//             });
//           },
//         ),
//         ListTile(
//           title: Text("-"),
//           onTap: () {
//             // gọi hàm build() chạy lại => rebuild
//             setState(() {
//               title -= 1;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
