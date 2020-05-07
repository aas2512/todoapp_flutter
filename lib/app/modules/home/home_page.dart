import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TodoController _todoController = TodoController();


  @override
  void initState() {
    super.initState();
    _todoController.getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      appBar: AppBar(
        title: Text('TODO APP', style: TextStyle(color: Colors.deepPurple),),
       backgroundColor: Colors.transparent,
       leading: IconButton(icon: Icon(Icons.filter_list, color: Colors.deepPurple,), onPressed: () => _scaffoldKey.currentState.openDrawer()),
       elevation: 0,
      ),
      body: Observer(
        builder:(_){
          return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/images/unTask.png'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
              child: Text('Tarefas', style: TextStyle(fontSize: 20),),
            ),
           _todoController.isLoading ? Center(child: CircularProgressIndicator(),) : Expanded(child: ListView.builder(
             itemCount: _todoController.todoList.length,
             itemBuilder: (context, index){
             return Card(
               elevation: 0.2,
               child: ListTile(
                 title: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text("${_todoController.todoList[index]['title']}"),
                     IconButton(icon: Icon(Icons.delete), onPressed: null)
                   ],
                 ),
                
               ),
             );
           }))
          ],
        );
        }
             
      ),
      drawer: CustomDrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Modular.to.pushNamed('/todo_create'),
        child: Icon(Icons.add),),
    );
  }
}
