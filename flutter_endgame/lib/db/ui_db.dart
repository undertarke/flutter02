import 'package:flutter/material.dart';
import 'package:flutter_endgame/db/dao/user_dao.dart';
import 'package:flutter_endgame/db/tables/user_table.dart';

class UiDb extends StatefulWidget {
  const UiDb({super.key});

  @override
  State<UiDb> createState() => _UiDbState();
}

class _UiDbState extends State<UiDb> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            createTableUsers();
          },
          child: Text("Tạo table user"),
        ),
        ElevatedButton(
          onPressed: () {
            dropTableUsers();
          },
          child: Text("Xóa table user"),
        ),
        ElevatedButton(
          onPressed: () async {
            var ketQua = await getUsers();
            print(ketQua);
          },
          child: Text("Lấy data table user"),
        ),
      ],
    );
  }
}
