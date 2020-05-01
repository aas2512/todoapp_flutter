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
  void initState()  {
    // TODO: implement initState
    super.initState();
     controller.getAllCategories();
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
      body: Observer(builder: (_){
        return Container(
        child: Card(
                child:controller.isLoading ? CircularProgressIndicator() : ListView.builder(
                itemCount: controller.categoriesList.length,
                itemBuilder: (context, index){
                return ListTile(
                  leading: Text("${controller.categoriesList[index]['id']}"),
                  title: Text("${controller.categoriesList[index]['name']}"),
                );
              })  
        
      ),
      );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showFormDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
