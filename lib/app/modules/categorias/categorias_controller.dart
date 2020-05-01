import 'package:mobx/mobx.dart';
import 'package:todo_app/app/modules/categorias/model/categoria_model.dart';
import 'package:todo_app/app/modules/categorias/service/categoria_service.dart';
import 'package:todo_app/app/repository/db_connection_repository.dart';

part 'categorias_controller.g.dart';

class CategoriasController = _CategoriasControllerBase
    with _$CategoriasController;

abstract class _CategoriasControllerBase with Store {

CategoriaModel _categoryModel = CategoriaModel();
CategoriaService _serv = CategoriaService();



@observable
String categoryName = '';

@observable
String categoryDescription = '';

//USASSE AS ACTIONS PARA RECEBER OS VALORES VINDO DA VIEW
@action
void setNameCategory(String value) => categoryName = value;  

@action
void setDescriptionCategory(String value) => categoryDescription = value;


//PARA TRABALHAR COM VALIDAÇÃO USA O @COMPUTED
@computed
bool get isFormIsValid => categoryName.length >= 3;  

@computed
String get cn => _categoryModel.categoryName = categoryName;

@computed
String get cd => _categoryModel.categoryDescription = categoryDescription;

@action
saveCategory() async{
 
 _categoryModel.categoryName = 'teste';
 _categoryModel.categoryDescription = 'teste descr';
 return await _serv.saveCategory(_categoryModel);
}

@action
getCategories() async{
  return await _serv.getCategories();
}
}
