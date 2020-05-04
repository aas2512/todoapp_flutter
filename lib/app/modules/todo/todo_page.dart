import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'todo_controller.dart';

class TodoPage extends StatefulWidget {
  final String title;
  const TodoPage({Key key, this.title = "Nova Tarefa"}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends ModularState<TodoPage, TodoController> {
  //use 'controller' variable to access controller

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getCategories();
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    /* autorun((_) {
      controller.getCategories();
      print(controller.categoriesDrop);
    }); */
  } 
  
  _showSnackBar(){
    return _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text('Tarefa adicionada com sucesso!',), duration: Duration(seconds: 2),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Column(
          children: <Widget>[
            Observer(
              builder: (_){
                return TextField(
              controller: controller.todoTitle,
              onChanged: (value) => controller.setTodoTitle,
              decoration: InputDecoration(
                  labelText: "Título da tarefa",
                  hintText: "Ex: fazer as compras"),
            );
              },
            ),
            TextField(
              controller: controller.todoDescription,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Descrição da tarefa",
                hintText: "",
              ),
              maxLines: 3,
            ),
            Observer(builder: (_){
              return TextField(
                onChanged: controller.setTodoDate,
              controller: controller.todoDate,
              decoration: InputDecoration(
                  labelText: "YY-MM-DD",
                  hintText: "YY-MM-DD",
                  prefixIcon: InkWell(onTap:()=> controller.selectTodoDate(context) ,child: Icon(Icons.calendar_today))),
            );
            }),
            Observer(builder: (_){
              return DropdownButtonFormField(
              value: controller.selectedValue,
              items: controller.categoriesDrop,
              onChanged: (value) {
                
              controller.setSelectedItem(value);
              }
                ,
              hint: Text('Selecione uma categoria'),
            );
            }),
            RaisedButton(
              onPressed: () {

                controller.saveTodo().then((value) {
                  if(value > 0){
                    controller.todoTitle.text = "";
                    controller.todoDescription.text = "";
                    controller.todoDate.text = "";
                      
                    _showSnackBar();
                  }
                });
              } ,
              child: Text('Salvar'),
            )
            
          ],
               )
      ),
    );
  }
}
