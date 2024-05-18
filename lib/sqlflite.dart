//.................هنا سكريبت الاتصال بداتا بيز داخليه.............

/*import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class sqldb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await con();
      return _db;
    } else {
      return _db;
    }
  }

  con() async {
    String database = await getDatabasesPath();
    String path = join(database, 'stoc.db');
    Database mydb = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
    );
    return mydb;
  }

  /* onUpgrade(Database db, int oldversion, int newversion) async {
    print("onupgrade ========================");
    await db.execute("ALTER TABLE notes ADD COLUMN $addcolumnname TEXT");
  }*/

  _onCreate(Database db, int version) async {
    await db.execute('''
CREATE TABLE menuitems
 ( 
   `id` INT NOT NULL AUTO_INCREMENT ,
    `ic` VARCHAR(255) NOT NULL ,
     `ip` VARCHAR(255) NOT NULL ,
      `is` VARCHAR(255) NOT NULL ,
       `in` VARCHAR(255) NOT NULL ,
        );
    
    ''');
    print("oncarete ========================");
  }
  //...............قرائه قيم الاعمده.............

  readdata(String sql) async {
    Database? mydb = await db;
    var response = await mydb!.rawQuery(sql);
    return response;
  }

//................ادخال قيمه.................
  insertdata(String sql) async {
    Database? mydb = await db;
    var response = await mydb!.rawInsert(sql);
    return response;
  }

//.................تحديث قيمه..................
  updatdata(String sql) async {
    Database? mydb = await db;
    var response = await mydb!.rawUpdate(sql);
    return response;
  }
  //..............حذف قيمه..................

  deletdata(String sql) async {
    Database? mydb = await db;
    var response = await mydb!.rawDelete(sql);
    return response;
  }
}

mydeletDatabase() async {
  String databasepath = await getDatabasesPath();
  String path = join(databasepath, 'stoc.db');
  await deleteDatabase(path);
}
*/