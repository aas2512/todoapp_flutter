import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/todo/todo_controller.dart';
import 'package:todo_app/app/shared/custom_drawer/custom_drawer_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "TODO APP"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  TodoController _todoController = TodoController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _todoController.getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
      drawer: CustomDrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Modular.to.pushNamed('/todo_create'),
        child: Icon(Icons.add),),
    );
  }
}
