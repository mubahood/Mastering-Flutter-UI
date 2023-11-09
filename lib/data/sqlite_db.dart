import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDb {
  static SQLiteDb? _sqLiteDb;
  static Database? _database;

  SQLiteDb._createObject();

  factory SQLiteDb() {
    if (_sqLiteDb == null) {
      _sqLiteDb = SQLiteDb._createObject();
    }
    return _sqLiteDb!;
  }

  Future<Database> init() async {
    return openDatabase(
      join(await getDatabasesPath(), 'materialx_flutter.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE notification("
          "id INTEGER PRIMARY KEY, title TEXT, content TEXT, type TEXT, "
          "image TEXT, link TEXT, createdAt INTEGER, isRead INTEGER"
          ")",
        );
      },
      version: 1,
    );
  }

  Future<Database?> get database async {
    if (_database == null) {
      _database = await init();
    }
    return _database;
  }




  Future<int> deleteNotification(int? id) async {
    Database db = await (this.database as FutureOr<Database>);
    return await db.delete(
      'notification',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> deleteAll() async {
    Database db = await (this.database as FutureOr<Database>);
    return await db.delete(
      'notification',
      where: "id > ?",
      whereArgs: [0],
    );
  }


}
