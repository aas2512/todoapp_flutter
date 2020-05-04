import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/app/modules/categorias/service/categoria_service.dart';
import 'package:todo_app/app/modules/todo/model/todo_model.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {

  CategoriaService _catSer = CategoriaService();
  TodoModel _todoMod = TodoModel();
  DateTime _date = DateTime.now();
  
  @observable
  var todoTitle = TextEditingController();

  @observable
  var todoDescription = TextEditingController();

  @observable
  var todoDate = TextEditingController();

  @observable
  String selectedValue;

  @action
  void setTodoTitle(String value) => todoTitle.text = value;

  @action
  void setTodoDate(String value) => todoDate.text = value;

  @computed
  bool get isFormIsValid => todoTitle.text.length > 3 && todoDate.text.length > 5; 
  
  ObservableList<DropdownMenuItem> categoriesDrop = ObservableList<DropdownMenuItem>();

  @action
  void selectedDrop(String value) => selectedValue = value;
 
  @action
  selectTodoDate(context) async {
    var _pickDate = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(2000), lastDate: DateTime(2099));
    if(_pickDate != null){
      _date = _pickDate;
      setTodoDate(DateFormat('yyyy-MM-dd').format(_pickDate));
      print(todoDate.text);
    }
  }

  getCategories() async {
    var categories = await _catSer.getCategories();
    
    categories.forEach((category){
      categoriesDrop.add(DropdownMenuItem(child: Text(category['name']), value: category['id'],));
    });

    print(categoriesDrop); 
  }
}
