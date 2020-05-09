import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/todo/todo_controller.dart';
import 'package:todo_app/app/shared/custom_drawer/custom_drawer_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final int category;
  const HomePage({Key key, this.title = "TODO APP", this.category = 0}) : super(key: key);

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
        title: Text(
          'TODO APP',
          style: TextStyle(color: Colors.deepPurple),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.deepPurple,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        elevation: 0,
      ),
      body: Observer(builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: Image.asset(
              'assets/images/unTask.png',
              width: 250,
            )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              child: Text(
                'Tarefas',
                style: TextStyle(fontSize: 20),
              ),
            ),
            _todoController.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView.builder(
                        itemCount: _todoController.todoList.length,
                        itemBuilder: (context, index) {
                          return Material(
                            child: InkWell(
                              onTap: () {
                                print('foi');
                              },
                              child: Card(
                                elevation: 0.2,
                                child: ListTile(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                          "${_todoController.todoList[index]['title']}",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                      IconButton(
                                          icon: Icon(Icons.delete),
                                          onPressed: () {
                                            _todoController.deleteTodo(_todoController.todoList[index]['id']).then((value) { 
                                              _snackbar(3);
                                              _todoController.getTodos();
                                              });
                                            print('apagado');
                                          })
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }))
          ],
        );
      }),
      drawer: CustomDrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Modular.to.pushNamed('/todo_create'),
        child: Icon(Icons.add),
      ),
    );
  }

   /*
  * SNACKBAR
  */
  _snackbar(int tipo) {
    String texto;
    if (tipo == 1) {
      texto = "Categoria adicionada com sucesso!";
    } else if (tipo == 2) {
      texto = "Categoria atualizada com sucesso!";
    } else {
      texto = "Tarefa apagada com sucesso!";
    }
    return _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(texto),
      duration: Duration(seconds: 3),
    ));
  }
}
