import 'package:sqflite/sqflite.dart';

class DBHelper {
  DBHelper._();

  static final DBHelper getInstance = DBHelper._();

  Database? myDB;

  Database getDB() {
    if(myDB!=null){
      return myDB!;
    } else {
      myDB = openDB();
      return myDB!;
    }
  }

  openDB() {}
}
