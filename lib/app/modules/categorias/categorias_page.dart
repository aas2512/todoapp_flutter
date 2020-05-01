import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'categorias_controller.dart';

class CategoriasPage extends StatefulWidget {
  final String title;
  const CategoriasPage({Key key, this.title = "Categorias"}) : super(key: key);

  @override
  _CategoriasPageState createState() => _CategoriasPageState();
}

class _CategoriasPageState
    extends ModularState<CategoriasPage, CategoriasController> {
  //use 'controller' variable to access controller

  @override
  void didChangeDependecies(){
    super.didChangeDependencies();

    reaction(
      (_) => controller.saveCategory,
      (saveCategory){
        print(saveCategory);
      }
    );

  }

  TextEditingController _categoryName = TextEditingController();
  TextEditingController _categoryDescription = TextEditingController();

  _showFormDialog() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return AlertDialog(
            actions: <Widget>[
              Observer(builder: (_) {
                return FlatButton(
                  onPressed:
                      controller.isFormIsValid ? () {
                        controller.saveCategory();
                        print('foi');
                        } : null,
                  child: Text('Salvar'),
                );
              }),
              FlatButton(onPressed: () {
                var cat = controller.getCategories();
                print(cat);
              }, child: Text('Cancelar'))
            ],
            title: Text('Categorias'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Observer(builder: (_) {
                    return TextField(
                      controller: _categoryName,
                      onChanged: controller.setNameCategory,
                      decoration: InputDecoration(
                          labelText: 'Nome',
                          hintText: 'Digite o nome da categoria'),
                    );
                  }),
                  Observer(builder: (_) {
                    return TextField(
                      controller: _categoryDescription,
                      onChanged: controller.setDescriptionCategory,
                      decoration: InputDecoration(
                          labelText: 'Descrição',
                          hintText: 'Digite uma descrição'),
                    );
                  })
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Bem-vindo as Categorias'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showFormDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
