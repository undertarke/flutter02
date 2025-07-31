// tạo cấu trúc table users

import 'package:flutter_endgame/db/DatabaseHelper.dart';

// khởi tạo đối tượng dùng kết nối đến database
Databasehelper databasehelper = Databasehelper();


Future<void> selectTableUsers() async {
  
  final db = await databasehelper.database; // gọi hàm kết nối database

 await db.rawQuery('INSERT INTO users VALUES (NULL,"tony starr","tony@gmail.com","911")');
  final result = await db.rawQuery('SELECT * FROM users');

  print(result);
}
// khởi tạo hàm create table users

Future<void> createTableUsers() async {
  final db = await databasehelper.database; // gọi hàm kết nối database

  final result = await db.rawQuery('''
      
      CREATE TABLE users(
          id  INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          email TEXT,
          phone TEXT
      )

   ''');


}

Future<void> dropTableUsers() async {
  final db = await databasehelper.database; // gọi hàm kết nối database

  final result = await db.rawQuery('''
      
        DROP TABLE users

   ''');

   
}