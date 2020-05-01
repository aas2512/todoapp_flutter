import 'package:flutter_modular/flutter_modular.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/app/service/db_connection_service.dart';

class DbConnectionRepository extends Disposable {

  DbConnectionService _connection;

  DbConnectionRepository(){
    _connection = DbConnectionService();
  }

  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _connection.setDatabase();
print(_database);
    return _database;
  }

  //METHOD TO SAVE ON DATABASE
  save(table, data) async{
    var conn = await database;
    print(table);
    
    return await conn.insert(table, data);
  }

  //METHOD TO GET ALLDATA FROM TABLE
  Future<List>getAllData(table) async {
    var conn = await database;
    return await conn.query(table);
  }

  //dispose will be called automatically
  @override
  void dispose() {
    
  }
}
