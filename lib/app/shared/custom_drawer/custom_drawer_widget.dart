import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
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
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
              title: Text('Início'),
              leading: Icon(Icons.home),
              onTap: (){
                Modular.to.pop(context);
                Modular.to.pushNamed(Modular.initialRoute);
              },
            ),
             ListTile(
              title: Text('Categorias'),
              leading: Icon(Icons.home),
              onTap: (){
                Modular.to.pop(context);
                Modular.to.pushNamed('/categorias');
                
              },
            )
          ],
        ),
      ),
    );
  }
}
