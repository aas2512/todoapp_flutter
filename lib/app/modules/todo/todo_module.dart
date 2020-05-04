import 'package:todo_app/app/modules/todo/service/todo_service.dart';
import 'package:todo_app/app/modules/todo/todo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/todo/todo_page.dart';

class TodoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TodoService()),
        Bind((i) => TodoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TodoPage()),
      ];

  static Inject get to => Inject<TodoModule>.of();
}
