import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/categorias/model/categoria_model.dart';
import 'package:todo_app/app/repository/db_connection_repository.dart';

class CategoriaService extends Disposable {
 
DbConnectionRepository _repo = DbConnectionRepository();

final _table = "categories";

CategoriaService(){
  _repo = DbConnectionRepository();
}

  getCategories() async {
    return await _repo.getAllData(_table);
  }

  getCategoryById(categoryId) async {
   return await _repo.getById(_table, categoryId);
  }

  saveCategory( category) async{
    return await _repo.save(_table, category.toMap());
  }

  updateCategory(itemId, category) async {
    return await _repo.updateById(_table, category, itemId);
  }

  deleteCategory(categoryId) async {
    return await _repo.deleteById(_table, categoryId);
  }

  @override
  void dispose() {
  }

  

  
}
