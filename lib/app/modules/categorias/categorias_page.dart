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
      final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.getAllCategories();
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    autorun((_) {
      print(controller.category);
    });
  }

  TextEditingController _categoryName = TextEditingController();
  TextEditingController _categoryDescription = TextEditingController();

  /*
  * SNACKBAR
  */
  _snackbar(int tipo){
    String texto;
    if(tipo == 1){
      texto = "Categoria adicionada com sucesso!";
    }else if(tipo == 2){
      texto = "Categoria atualizada com sucesso!";
    }else{
      texto = "Categoria apagada com sucesso!";
    }
    return _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text(texto),
      duration: Duration(seconds:3),
      )
    );
  }


  //DIALOG TO ADD NEW CATEGORY IN TODO APP
  _showFormDialog() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return AlertDialog(
            actions: <Widget>[
              Observer(builder: (_) {
                return FlatButton(
                  onPressed: controller.isFormIsValid
                      ? () {
                          controller
                              .saveCategory()
                              .then((value) {
                                print('foi');
                                _snackbar(1);
                                controller.getAllCategories();
                                Future.delayed(Duration(seconds: 1))
                              .then((value) => Modular.to.pop());
                              _categoryName.text = "";
                              _categoryDescription.text = "";
                              });
                          
                          
                        }
                      : null,
                  child: Text('Salvar'),
                );
              }),
              FlatButton(
                  onPressed: () {
                    var cat = controller.getCategories();
                    print(cat);
                    Modular.to.pop();
                  },
                  child: Text('Cancelar'))
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
  //END ADD DIALOG

  /*
  * DIALOG TO EDIT CATEGORY
  */
  _editFormDialog(int categoryId) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return AlertDialog(
            actions: <Widget>[
              Observer(builder: (_) {
                return FlatButton(
                  onPressed: controller.isFormIsValid
                      ? () {
                          controller.updateCategory(categoryId).then((value) {
                            Modular.to.pop();
                            _snackbar(2);
                            controller.editCategoryName.text = "";
                            controller.editCategoryDescription.text = "";
                          });
                          
                        }
                      : null,
                  child: Text('Salvar'),
                );
              }),
              FlatButton(
                  onPressed: () {
                    Modular.to.pop();
                  },
                  child: Text('Cancelar'))
            ],
            title: Text('Editar Categoria'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Observer(builder: (_) {
                    return TextField(
                      controller: controller.editCategoryName,
                      onChanged: controller.setNameCategory,
                      decoration: InputDecoration(
                          labelText: 'Nome',
                          hintText: 'Digite o nome da categoria'),
                    );
                  }),
                  Observer(builder: (_) {
                    return TextField(
                      controller: controller.editCategoryDescription,
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
  //END EDIT DIALOG CATEGORY

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        return Container(
            child: controller.isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.categoriesList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                controller
                                    .editCategory(controller
                                        .categoriesList[index]['id']
                                        .toString())
                                    .then((value) => _editFormDialog(controller
                                        .categoriesList[index]['id']));

                              }),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                  "${controller.categoriesList[index]['name']}"),
                              IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  controller.deleteCategory(controller.categoriesList[index]['id']).then((value) => controller.getAllCategories());
                                  
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    }));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showFormDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
