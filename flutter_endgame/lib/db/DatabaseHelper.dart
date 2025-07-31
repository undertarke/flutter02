import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


// khởi tạo hoặc mở database
class Databasehelper {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'app.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {},
    );

    return _database!;
  }

}
