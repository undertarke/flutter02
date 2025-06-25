import 'package:flutter/material.dart';

class BaiTapMot extends StatelessWidget {
  const BaiTapMot({super.key});

  @override
  Widget build(BuildContext context) {
    var listUser = [
      {"ten": "Nguyen Van An", "email": "an@example.com", "sdt": "0902345678"},
      {
        "ten": "Tran Thi Binh",
        "email": "binh@example.com",
        "sdt": "0912345678",
      },
      {
        "ten": "Le Van Cuong",
        "email": "cuong@example.com",
        "sdt": "0923456789",
      },
      {"ten": "Pham Thi Dao", "email": "dao@example.com", "sdt": "0934567890"},
      {"ten": "Hoang Van Em", "email": "em@example.com", "sdt": "0945678901"},
      {
        "ten": "Vo Thi Giang",
        "email": "giang@example.com",
        "sdt": "0956789012",
      },
      {
        "ten": "Dang Van Hung",
        "email": "hung@example.com",
        "sdt": "0967890123",
      },
      {"ten": "Bui Thi Hanh", "email": "hanh@example.com", "sdt": "0978901234"},
      {"ten": "Do Van Khoa", "email": "khoa@example.com", "sdt": "0989012345"},
      {
        "ten": "Nguyen Thi Lan",
        "email": "lan@example.com",
        "sdt": "0990123456",
      },
      {
        "ten": "Tran Van Minh",
        "email": "minh@example.com",
        "sdt": "0901234567",
      },
      {"ten": "Le Thi Nga", "email": "nga@example.com", "sdt": "0912345670"},
      {
        "ten": "Pham Van Oanh",
        "email": "oanh@example.com",
        "sdt": "0923456701",
      },
      {
        "ten": "Hoang Thi Phuong",
        "email": "phuong@example.com",
        "sdt": "0934567012",
      },
      {
        "ten": "Vo Van Quang",
        "email": "quang@example.com",
        "sdt": "0945670123",
      },
      {
        "ten": "Dang Thi Quyen",
        "email": "quyen@example.com",
        "sdt": "0956701234",
      },
      {"ten": "Bui Van Son", "email": "son@example.com", "sdt": "0967012345"},
      {"ten": "Do Thi Tam", "email": "tam@example.com", "sdt": "0970123456"},
      {
        "ten": "Nguyen Van Tuan",
        "email": "tuan@example.com",
        "sdt": "0981234567",
      },
      {
        "ten": "Tran Thi Uyen",
        "email": "uyen@example.com",
        "sdt": "0992345678",
      },
      {"ten": "Le Van Viet", "email": "viet@example.com", "sdt": "0903456789"},
      {
        "ten": "Pham Thi Xuan",
        "email": "xuan@example.com",
        "sdt": "0914567890",
      },
      {"ten": "Hoang Van Yen", "email": "yen@example.com", "sdt": "0925678901"},
      {"ten": "Vo Thi Anh", "email": "anh@example.com", "sdt": "0936789012"},
      {"ten": "Dang Van Bao", "email": "bao@example.com", "sdt": "0947890123"},
      {"ten": "Bui Thi Chau", "email": "chau@example.com", "sdt": "0958901234"},
      {"ten": "Do Van Dung", "email": "dung@example.com", "sdt": "0969012345"},
      {"ten": "Nguyen Thi Ha", "email": "ha@example.com", "sdt": "0970123456"},
      {
        "ten": "Tran Van Kien",
        "email": "kien@example.com",
        "sdt": "0981234567",
      },
      {"ten": "Le Thi Mai", "email": "mai@example.com", "sdt": "0992345678"},
       {"ten": "Hoang Van Yen", "email": "yen@example.com", "sdt": "0925678901"},
      {"ten": "Vo Thi Anh", "email": "anh@example.com", "sdt": "0936789012"},
      {"ten": "Dang Van Bao", "email": "bao@example.com", "sdt": "0947890123"},
      {"ten": "Bui Thi Chau", "email": "chau@example.com", "sdt": "0958901234"},
      {"ten": "Do Van Dung", "email": "dung@example.com", "sdt": "0969012345"},
      {"ten": "Nguyen Thi Ha", "email": "ha@example.com", "sdt": "0970123456"},
      {
        "ten": "Tran Van Kien",
        "email": "kien@example.com",
        "sdt": "0981234567",
      },
      {"ten": "Le Thi Mai", "email": "mai@example.com", "sdt": "0992345678"},
       {"ten": "Hoang Van Yen", "email": "yen@example.com", "sdt": "0925678901"},
      {"ten": "Vo Thi Anh", "email": "anh@example.com", "sdt": "0936789012"},
      {"ten": "Dang Van Bao", "email": "bao@example.com", "sdt": "0947890123"},
      {"ten": "Bui Thi Chau", "email": "chau@example.com", "sdt": "0958901234"},
      {"ten": "Do Van Dung", "email": "dung@example.com", "sdt": "0969012345"},
      {"ten": "Nguyen Thi Ha", "email": "ha@example.com", "sdt": "0970123456"},
      {
        "ten": "Tran Van Kien",
        "email": "kien@example.com",
        "sdt": "0981234567",
      },
      {"ten": "Le Thi Mai", "email": "mai@example.com", "sdt": "0992345678"},
       {"ten": "Hoang Van Yen", "email": "yen@example.com", "sdt": "0925678901"},
      {"ten": "Vo Thi Anh", "email": "anh@example.com", "sdt": "0936789012"},
      {"ten": "Dang Van Bao", "email": "bao@example.com", "sdt": "0947890123"},
      {"ten": "Bui Thi Chau", "email": "chau@example.com", "sdt": "0958901234"},
      {"ten": "Do Van Dung", "email": "dung@example.com", "sdt": "0969012345"},
      {"ten": "Nguyen Thi Ha", "email": "ha@example.com", "sdt": "0970123456"},
      {
        "ten": "Tran Van Kien",
        "email": "kien@example.com",
        "sdt": "0981234567",
      },
      {"ten": "Le Thi Mai", "email": "mai@example.com", "sdt": "0992345678"},
    ];

    return ListView.builder(
      itemCount: listUser.length,
      itemBuilder: (context, index) {
        var user = listUser[index];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=${user['ten']}&background=random&bold=true",
            ),
          ),
          title: Text("${user['ten']}"),
          subtitle: Text("${user['email']} | ${user['sdt']}"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        );
      },
    );
  }
}
