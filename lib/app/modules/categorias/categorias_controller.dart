import 'package:mobx/mobx.dart';
import 'package:todo_app/app/modules/categorias/model/categoria_model.dart';
import 'package:todo_app/app/modules/categorias/service/categoria_service.dart';
import 'model/categoria_model.dart';

part 'categorias_controller.g.dart';

class CategoriasController = _CategoriasControllerBase
    with _$CategoriasController;

abstract class _CategoriasControllerBase with Store {

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

//method to save category name in db
@action
saveCategory() async{
 _categoryModel.categoryName = categoryName;
 _categoryModel.categoryDescription = categoryDescription;
 _categoryModel.categoryDescription = 'teste descr';
 return await _serv.saveCategory(_categoryModel);
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

}
