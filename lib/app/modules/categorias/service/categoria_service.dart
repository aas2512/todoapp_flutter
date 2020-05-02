import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/categorias/model/categoria_model.dart';
import 'package:todo_app/app/repository/db_connection_repository.dart';

class CategoriaService extends Disposable {
 
DbConnectionRepository _repo = DbConnectionRepository();

CategoriaService(){
  _repo = DbConnectionRepository();
}

  getCategories() async {
    return await _repo.getAllData('categories');
  }

  getCategoryById(categoryId) async {
   return await _repo.getById('categories', categoryId);
  }

  saveCategory(CategoriaModel category) async{
    return await _repo.save('categories', category.categoryMap());
  }

  updateCategory(itemId, category) async {
    return await _repo.updateById('categories', category, itemId);
  }

  @override
  void dispose() {
  }

  deleteCategory(categoryId) async {
    return await _repo.deleteById('categories', categoryId);
  }

  
}
