import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form/bai_tap_hai.dart';
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
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: SafeArea(child: MyWidget()),
      ),
    );
  }
}

// buoi 22
// Form
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _formKey = GlobalKey<FormState>();
  var lstGiay=[];
  
  var hoTen = "";
  var email = "";
  var ghiChu = "";
  var phuongXa;
  var listPhuongXa = [
    {"id": 1, "label": "Sài Gòn"},
    {"id": 2, "label": "Tân Định"},
    {"id": 3, "label": "Diên Hồng"},
    {"id": 4, "label": "Hòa Hưng"},
    {"id": 5, "label": "Hòa Bình"},
    {"id": 6, "label": "Phú Thọ"},
    {"id": 7, "label": "Bình Thới"},
    {"id": 8, "label": "Minh Phụng"},
    {"id": 9, "label": "Xóm Chiếu"},
    {"id": 10, "label": "Tân Tạo"},
    {"id": 11, "label": "Bình Trị Đông"},
    {"id": 12, "label": "Bình Hưng Hòa"},
    {"id": 13, "label": "Hiệp Bình"},
    {"id": 14, "label": "Tam Bình"},
    {"id": 15, "label": "Thủ Đức"},
    {"id": 16, "label": "Linh Xuân"},
    {"id": 17, "label": "Bình Hưng"},
    {"id": 18, "label": "Bình Khánh"},
    {"id": 19, "label": "An Thới Đông"},
    {"id": 20, "label": "Cần Giờ"},
    {"id": 21, "label": "Tân Kiên"},
    {"id": 22, "label": "An Phú Đông"},
    {"id": 23, "label": "Tân Thới Hiệp"},
    {"id": 24, "label": "Thới An"},
    {"id": 25, "label": "Tân Vĩnh Lộc"},
    {"id": 26, "label": "Bình Lợi"},
    {"id": 27, "label": "Tân Nhựt"},
    {"id": 28, "label": "Bình Chánh"},
    {"id": 29, "label": "Hưng Long"},
    {"id": 30, "label": "An Nhơn Tây"},
  ];
  var gioiTinh = 0;
  var dongY = false;
  var thongTin = {};

  onSubmit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    if (!dongY){
      print("chưa đổng ý điều khoản");
      return;
    }

    setState(() {
      thongTin = {
        "hoTen": hoTen,
        "email": email,
        "ghiChu": ghiChu,
        "phuongXa": phuongXa,
        "gioiTinh": gioiTinh,
        "dongY": dongY,
      };
    });

    print(thongTin);
  }

  bool isValidEmail(String email) {
    // Biểu thức chính quy để kiểm tra email
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  bool isValidInteger(String value) {
    // Regex kiểm tra số nguyên (chỉ chứa các chữ số 0-9, có thể có dấu - cho số âm)
    final RegExp integerRegex = RegExp(r'^-?\d+$');
    return integerRegex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            TextFormField(
              validator: (value) {
                // true
                if (value == null ||
                    value.isEmpty == true ||
                    value.trim() == "") {
                  return "Hãy nhập họ tên của bẹn !!!!";
                }
                return null;
              },
              initialValue: "$hoTen",
              decoration: InputDecoration(
                labelText: "Họ và tên",
                hintText: "Hãy nhập họ và tên của bạn...", // placeholder
                prefixIcon: Icon(Icons.home),
                suffixIcon: Icon(Icons.access_alarm),
                border: OutlineInputBorder(),
              ),

              // gửi dữ liệu cho Form
              onSaved: (newValue) {},

              onChanged: (value) {
                hoTen = value;
                print(hoTen);
              },

              // submit khi enter
              onFieldSubmitted: (value) {
                print(value);
                // gửi dữ liệu đi
              },
              style: TextStyle(color: Colors.black),
              maxLength: 50,
            ),

            TextFormField(
              onChanged: (value) {
                email = value;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Vui lòng nhập email';
                }
                if (!isValidEmail(value)) {
                  return 'Email không hợp lệ';
                }
                return null;
              },
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^-?\d*'),
                ), // Chỉ cho phép số và dấu trừ
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Vui lòng nhập điện thoại';
                }
                if (!isValidInteger(value)) {
                  return 'Điện thoại không hợp lệ';
                }

                if(value.length < 10){
                  return "số điện thoại phải lớn hơn 10 số";
                }
                return null;
              },
              decoration: InputDecoration(labelText: "Điện thoại"),
            ),
            TextFormField(
              onChanged: (value) {
                ghiChu = value;
              },
              maxLines: 3, // TextArea
              decoration: InputDecoration(labelText: "Ghi chú"),
            ),

            DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phường & Xã",
              ),
              items:
                  listPhuongXa.map((item) {
                    return DropdownMenuItem(
                      value: item['id'],
                      child: Text("${item['label']}"),
                    );
                  }).toList(),

              onChanged: (value) {
                phuongXa = value;
              },
            ),

            RadioListTile(
              title: Text("Nam"),
              value: 0,
              groupValue: gioiTinh,
              onChanged: (value) {
                setState(() {
                  gioiTinh = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Nữ"),
              value: 1,
              groupValue: gioiTinh,
              onChanged: (value) {
                setState(() {
                  gioiTinh = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Khác"),
              value: 2,
              groupValue: gioiTinh,
              onChanged: (value) {
                setState(() {
                  gioiTinh = value!;
                });
              },
            ),
            CheckboxListTile(
              value: dongY,
              onChanged: (value) {
                setState(() {
                  dongY = value!;
                });
              },
              
              title: Text("Bạn có đồng ý điều khoản !!"),
            ),

            SwitchListTile(
              value: dongY,
              onChanged: (value) {
                setState(() {
                  dongY = value;
                });
              },
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // gửi dữ liệu đi
                onSubmit();
              },
              child: Text("Gửi dữ liệu (submit)"),
            ),

            Text("${thongTin}"),
          ],
        ),
      ),
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
