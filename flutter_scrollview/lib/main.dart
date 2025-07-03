import 'package:flutter/material.dart';
import 'package:flutter_scrollview/bai_tap_ba.dart';
import 'package:flutter_scrollview/bai_tap_bon.dart';
import 'package:flutter_scrollview/bai_tap_hai.dart';
import 'package:flutter_scrollview/bai_tap_mot.dart';
import 'package:flutter_scrollview/bai_tap_nam.dart';

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
      home: Scaffold(
        backgroundColor: Colors.grey,
        // appBar: AppBar(title: Text("Appbar scaffold !!!")),
        body: SafeArea(child: MyWidget()),
      ),
    );
  }
}

// buoi 19

// snippet:
// stateless : STL
// statefull : STF
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var title = "Hello world !!";

  @override
  Widget build(BuildContext context) {
    print(title);

    return Column(
      children: [
        Text("$title", style: TextStyle(fontSize: 50)),
        ListTile(
          title: Text("Bấm"),
          onTap: () {
            title = "Mentor trừ lương";
            setState(() {}); // rebuild => load lại hàm build
            print(title);
          },
        ),
      ],
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("Hello world !!", style: TextStyle(fontSize: 50)),
//         ListTile(
//           title: Text("Bấm"),
//           onTap: () {
//             print("bấm nè nè");
//           },
//         ),
//       ],
//     );
//   }
// }

// buoi 18

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           // title: Text("Đây là tiêu đề"),
//           leading: Icon(Icons.arrow_back),
//           actions: [Icon(Icons.settings), Icon(Icons.list)],
//           expandedHeight: 300,
//           collapsedHeight: 100,
//           floating: true,
//           pinned: true,
//           flexibleSpace: FlexibleSpaceBar(
//             // centerTitle: true,
//             background: Image.network("https://picsum.photos/400/300?random=0"),
//             title: Text("title collapse"),
//           ),
//         ),

//         SliverList(
//           delegate: SliverChildListDelegate([
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//           ]),
//         ),
//       ],
//     );
//   }
// }


// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: Column(
//             children: [
//               Text("dòng 1"),
//               Text("dòng 2"),
//               Text("dòng 3"),
//               Text("dòng 4"),
//             ],
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: Container(
//             height: 300,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Image.network("https://picsum.photos/300/300?random=2"),
//                 Image.network("https://picsum.photos/300/300?random=2"),
//                 Image.network("https://picsum.photos/300/300?random=2"),
//               ],
//             ),
//           ),
//         ),
//         SliverList(
//           delegate: SliverChildListDelegate([
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//             Image.network("https://picsum.photos/300/300?random=2"),
//           ]),
//         ),

//         SliverGrid(
//           delegate: SliverChildListDelegate([
//             Image.network("https://picsum.photos/300/300?random=3"),
//             Image.network("https://picsum.photos/300/300?random=3"),
//             Image.network("https://picsum.photos/300/300?random=3"),
//             Image.network("https://picsum.photos/300/300?random=3"),
//           ]),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//           ),
//         ),

//         SliverList(
//           delegate: SliverChildBuilderDelegate(childCount: 10, (
//             context,
//             index,
//           ) {
//             return Text("data $index");
//           }),
//         ), // chèn một widget vào CustomScrollView
//       ],
//     );
//   }
// }

// buoi 17
// tiktok, PageView()

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       scrollDirection: Axis.vertical,
//       children: [

//         Image.network(
//           "https://picsum.photos/200/200?random=2",
//           fit: BoxFit.fill,
//           width: 400,
//           height: 400,
//         ),
//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=2"),
//       ],
//     );
//   }
// }

// GridView.builder()
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Container(
//           height: 800,
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//             ),
//             itemCount: 30,
//             itemBuilder: (context, index) {
//               return Image.network("https://picsum.photos/300/300?random=2");
//             },
//           ),
//         ),

//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=2"),
//       ],
//     );
//   }
// }

// GridView
// count => định nghĩa số cột
// extent => định nghĩa chiều rộng của 1 cột
// childAspectRatio: > 1: giảm chiều cao, < 1 giảm chiều rộng
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       reverse: true,

//       crossAxisCount: 3,
//       crossAxisSpacing:10,
//       mainAxisSpacing: 20,
//       padding: EdgeInsets.all(10),
//       children: [
//         Image.network("https://picsum.photos/300/300?random=0",fit: BoxFit.fill,),
//         Image.network("https://picsum.photos/300/300?random=2"),
//         Image.network("https://picsum.photos/300/300?random=1"),
//         Image.network("https://picsum.photos/300/300?random=3"),
//         Image.network("https://picsum.photos/300/300?random=4"),
//         Image.network("https://picsum.photos/300/300?random=5"),
//         Image.network("https://picsum.photos/300/300?random=6"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//         Image.network("https://picsum.photos/300/300?random=7"),
//       ],
//     );
//   }
// }

// buoi 16

// ListView conflict

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Container(
//           height: 200,
//           child: ListView(
//             children: [
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//               Text("data"),
//             ],
//           ),
//         ),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//         Text("data 2"),
//       ],
//     );
//   }
// }

// ListTile

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: ClipRRect(
//         borderRadius: BorderRadius.circular(100),
//         child: Image.network(
//           "https://ui-avatars.com/api/?name=NguyenDinhSang&background=random&bold=true",
//         ),
//       ),
//       title: Text("Nguyen Dinh Sang"),
//       subtitle: Text("911"),
//       trailing: Icon(Icons.face),
//       onTap: () {
//         print("ListTitle đang được bấm !!!");
//       } , // sự kiện nhấn (click)
//     );
//   }
// }

// SingleChildScrollView
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var listContainer = [
//       {"ten": "Nguyen Van An", "email": "an@example.com", "sdt": "0902345678"},
//       {
//         "ten": "Tran Thi Binh",
//         "email": "binh@example.com",
//         "sdt": "0912345678",
//       },
//       {
//         "ten": "Le Van Cuong",
//         "email": "cuong@example.com",
//         "sdt": "0923456789",
//       },
//       {"ten": "Pham Thi Dao", "email": "dao@example.com", "sdt": "0934567890"},
//       {"ten": "Hoang Van Em", "email": "em@example.com", "sdt": "0945678901"},
//       {
//         "ten": "Vo Thi Giang",
//         "email": "giang@example.com",
//         "sdt": "0956789012",
//       },
//       {
//         "ten": "Dang Van Hung",
//         "email": "hung@example.com",
//         "sdt": "0967890123",
//       },
//       {"ten": "Bui Thi Hanh", "email": "hanh@example.com", "sdt": "0978901234"},
//       {"ten": "Do Van Khoa", "email": "khoa@example.com", "sdt": "0989012345"},
//       {
//         "ten": "Nguyen Thi Lan",
//         "email": "lan@example.com",
//         "sdt": "0990123456",
//       },
//       {
//         "ten": "Tran Van Minh",
//         "email": "minh@example.com",
//         "sdt": "0901234567",
//       },
//       {"ten": "Le Thi Nga", "email": "nga@example.com", "sdt": "0912345670"},
//       {
//         "ten": "Pham Van Oanh",
//         "email": "oanh@example.com",
//         "sdt": "0923456701",
//       },
//       {
//         "ten": "Hoang Thi Phuong",
//         "email": "phuong@example.com",
//         "sdt": "0934567012",
//       },
//       {
//         "ten": "Vo Van Quang",
//         "email": "quang@example.com",
//         "sdt": "0945670123",
//       },
//       {
//         "ten": "Dang Thi Quyen",
//         "email": "quyen@example.com",
//         "sdt": "0956701234",
//       },
//       {"ten": "Bui Van Son", "email": "son@example.com", "sdt": "0967012345"},
//       {"ten": "Do Thi Tam", "email": "tam@example.com", "sdt": "0970123456"},
//       {
//         "ten": "Nguyen Van Tuan",
//         "email": "tuan@example.com",
//         "sdt": "0981234567",
//       },
//       {
//         "ten": "Tran Thi Uyen",
//         "email": "uyen@example.com",
//         "sdt": "0992345678",
//       },
//       {"ten": "Le Van Viet", "email": "viet@example.com", "sdt": "0903456789"},
//       {
//         "ten": "Pham Thi Xuan",
//         "email": "xuan@example.com",
//         "sdt": "0914567890",
//       },
//       {"ten": "Hoang Van Yen", "email": "yen@example.com", "sdt": "0925678901"},
//       {"ten": "Vo Thi Anh", "email": "anh@example.com", "sdt": "0936789012"},
//       {"ten": "Dang Van Bao", "email": "bao@example.com", "sdt": "0947890123"},
//       {"ten": "Bui Thi Chau", "email": "chau@example.com", "sdt": "0958901234"},
//       {"ten": "Do Van Dung", "email": "dung@example.com", "sdt": "0969012345"},
//       {"ten": "Nguyen Thi Ha", "email": "ha@example.com", "sdt": "0970123456"},
//       {
//         "ten": "Tran Van Kien",
//         "email": "kien@example.com",
//         "sdt": "0981234567",
//       },
//       {"ten": "Le Thi Mai", "email": "mai@example.com", "sdt": "0992345678"},
//     ];

//     // itemBuilder: bắt buộc phải khai báo
//     return ListView.builder(
//       scrollDirection: Axis.vertical,
//       itemCount: listContainer.length, // số lượng item của list
//       itemBuilder: (context, index) {
//         var item = listContainer[index];

//         return Text("${item['ten']}");
//       },
//     );
//   }
// }

