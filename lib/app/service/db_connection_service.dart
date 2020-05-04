import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbConnectionService extends Disposable {
  //CONFIGURAÇÃO INICIAL DO DB

  Database database;
  
  setDatabase() async {
    //GET THE APPLICATION DOCUMENT DIRECTORY
    var dir = await getApplicationDocumentsDirectory();
    //JOIN PATH WITH NAME OF DATABASE
    var path = join(dir.path, 'db_todo');
    database = await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);

    return database;
  }

  _onCreatingDatabase(Database db, int version) async{
    await db.execute("CREATE TABLE categories(id INTEGER PRIMARY KEY, name TEXT, description TEXT)");
    await db.execute("CREATE TABLE todos(id INTEGER PRIMARY KEY, title TEXT, description TEXT, todoDate TEXT, categoryId INTEGER, isFinished INTEGER)");
  }
  
  @override
  void dispose() {}
}
