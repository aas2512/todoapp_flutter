import 'package:todo_app/app/modules/categorias/service/categoria_service.dart';
import 'package:todo_app/app/modules/categorias/categorias_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/categorias/categorias_page.dart';

class CategoriasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CategoriaService()),
        Bind((i) => CategoriasController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CategoriasPage()),
      ];

  static Inject get to => Inject<CategoriasModule>.of();
}
