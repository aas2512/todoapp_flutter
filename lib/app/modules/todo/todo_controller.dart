import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/app/modules/categorias/service/categoria_service.dart';
import 'package:todo_app/app/modules/todo/model/todo_model.dart';
import 'package:todo_app/app/modules/todo/service/todo_service.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {

  CategoriaService _catSer = CategoriaService();
  TodoModel _todoMod = TodoModel();
  TodoService _serv = TodoService();
  DateTime _date = DateTime.now();
  
  @observable
  var todoTitle = TextEditingController();

  @observable
  var todoDescription = TextEditingController();

  @observable
  var todoDate = TextEditingController();

  @observable
  var selectedValue;

  @action
  void setTodoTitle(String value) => todoTitle.text = value;

  @action
  void setTodoDate(String value) => todoDate.text = value;

  @computed
  bool get isFormIsValid => todoTitle.text.length > 3 && todoDate.text.length > 5; 
  
  ObservableList<DropdownMenuItem> categoriesDrop = ObservableList<DropdownMenuItem>();

  List todoList;

  @action
  void setSelectedItem(value) {
      selectedValue = value;
  } 
 
  @action
  selectTodoDate(context) async {
    var _pickDate = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(2000), lastDate: DateTime(2099));
    if(_pickDate != null){
      _date = _pickDate;
      setTodoDate(DateFormat('yyyy-MM-dd').format(_pickDate));
      print(todoDate.text);
    }
  }

  @action
  getCategories() async {
    var categories = await _catSer.getCategories();
  
    categories.forEach((category){
      categoriesDrop.add(DropdownMenuItem(child: Text(category['name']), value: category['id'],));
      print(category['id']); 
    });

    
  }

  @action
  Future saveTodo() async {
    print(selectedValue);
    _todoMod.title = todoTitle.text;
    _todoMod.description = todoDescription.text;
    _todoMod.todoDate = todoDate.text;
    _todoMod.categoryId = selectedValue;
    _todoMod.isFinished = 0;

  var _ret =  await _serv.saveTodo(_todoMod); 
  
  return _ret;
  }

  @action
  getTodos() async {
      todoList =  await _serv.getAllTodos();
      print(todoList);
      return todoList;
  }
}
