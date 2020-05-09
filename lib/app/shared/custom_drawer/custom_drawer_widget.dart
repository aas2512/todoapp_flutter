import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/categorias/categorias_controller.dart';

class CustomDrawerWidget extends StatefulWidget {
  @override
  _CustomDrawerWidgetState createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  CategoriasController _categ = CategoriasController();

  @override
  void initState() {
    super.initState();
    _categ.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
           
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Alan Abreu'),
                accountEmail: Text('Category & Priority based Todo App'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.deepPurple),
              ),
              Expanded(
                    child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('Início'),
                        leading: Icon(Icons.home),
                        onTap: () {
                          Modular.to.pop(context);
                          Modular.to.pushNamed(Modular.initialRoute);
                        },
                      ),
                      ListTile(
                        title: Text('Categorias'),
                        leading: Icon(Icons.home),
                        onTap: () {
                          Modular.to.pop(context);
                          Modular.to.pushNamed('/categorias');
                        },
                      ),
                    ],
                  ),
              ),
              Divider(),
            
            ],
          ),
        ),
      
    );
  }
}
