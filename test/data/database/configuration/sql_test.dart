
import 'package:flutter_test/flutter_test.dart';
import 'package:qard_wallet/data/database/configuration/sql.dart';
import 'package:sqflite/sqflite.dart';

class Example extends Sql { }

void main() {


  test('Init database', () async {
    Example example = Example();

    Stream<Database> str = example.getConnection();
    Stream<Database> str2 = example.getConnection();

    expect((str == str2), equals(true));
  });

}