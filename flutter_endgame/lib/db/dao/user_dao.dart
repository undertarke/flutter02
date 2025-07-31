import 'package:flutter_endgame/db/DatabaseHelper.dart';

Databasehelper databasehelper = Databasehelper();
// R
Future<dynamic> getUsers() async {
  final db = await databasehelper.database;
  final result = await db.query('users'); // đồng bộ

  return result;
}

Future<dynamic> getUserById(id) async {
  final db = await databasehelper.database;
  final result = await db.query(
    'users',
    where: " id = ? ",
    whereArgs: [id],
    
  ); // đồng bộ

  return result;
}

// C
Future<dynamic> insertUser(user) async {
  final db = await databasehelper.database;
  return await db.insert("users", user);
}

// D
Future<dynamic> deleteUser(id) async {
  final db = await databasehelper.database;
  final result = await db.delete('users', where: 'id = ?', whereArgs: [id]);
  return result;
}

// U
Future<dynamic> updateUser(user, id) async {
  final db = await databasehelper.database;
  final result = await db.update(
    'users',
    user,
    where: 'id = ?',
    whereArgs: [id],
  );
  return result;
}
