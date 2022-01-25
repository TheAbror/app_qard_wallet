import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

abstract class Sql {

  Future<Database> _open() async {
    return await openDatabase(
        path.join(await getDatabasesPath(), 'QardWallet.db'),
        version: 1,
        onCreate: (Database db, int version) async {

          //todos
          await db.execute('''
            create table Todo ( 
              id integer primary key autoincrement, 
              title text not null,
              done integer not null)
            ''');

          //todos2
          await db.execute('''
            create table Todo2 ( 
              id integer primary key autoincrement, 
              title text not null,
              done integer not null)
            ''');
        });
  }

  Stream<Database> getConnection() {
    return Stream.fromFuture(_open());
  }

}
