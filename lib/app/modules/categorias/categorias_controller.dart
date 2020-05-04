import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo_app/app/modules/categorias/model/categoria_model.dart';
import 'package:todo_app/app/modules/categorias/service/categoria_service.dart';
import 'model/categoria_model.dart';

part 'categorias_controller.g.dart';

class CategoriasController = _CategoriasControllerBase
    with _$CategoriasController;

abstract class _CategoriasControllerBase with Store {

@observable
TextEditingController editCategoryName = TextEditingController();

@observable
TextEditingController editCategoryDescription = TextEditingController();

CategoriaModel _categoryModel = CategoriaModel();
CategoriaService _serv = CategoriaService();

@observable
bool isLoading = false;

@observable
String categoryName = '';

@observable
String categoryDescription = '';

//USASSE AS ACTIONS PARA RECEBER OS VALORES VINDO DA VIEW
@action
void setNameCategory(String value) => categoryName = value;  

@action
void setDescriptionCategory(String value) => categoryDescription = value;

@action
List setListCategories(List value) => categoriesList = value;
 
//PARA TRABALHAR COM VALIDAÇÃO USA O @COMPUTED
@computed
bool get isFormIsValid => categoryName.length >= 3;  

@observable
List categoriesList;

@observable
List category;


//method to save category name in db
@action
Future saveCategory() async{
 _categoryModel.name = categoryName;
 _categoryModel.description = categoryDescription;
 return await _serv.saveCategory(_categoryModel);
}

/*
* METHOD TO UPDATE CATEGORY
*/
@action
Future updateCategory(int categoryId) async{
  _categoryModel.name = editCategoryName.text;
  _categoryModel.description = editCategoryDescription.text;

  return _serv.updateCategory(categoryId, _categoryModel.toMap());
}

/*
* METHOD TO DELETE CATEGORY
*/
@action 
deleteCategory(int categoryId) async{
  return _serv.deleteCategory(categoryId);
}

@action
getCategories() async{
  return await _serv.getCategories();
}

@action
getAllCategories() async {
  isLoading = true;
  setListCategories(await this.getCategories());
  isLoading = false;
} 

@action 
Future editCategory(String categoryId) async{

  category = await _serv.getCategoryById(categoryId);
  editCategoryName.text = category[0]['name'];
  editCategoryDescription.text = category[0]['description'];
  
}
}
