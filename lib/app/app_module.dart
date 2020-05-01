import 'package:todo_app/app/service/db_connection_service.dart';
import 'package:todo_app/app/repository/db_connection_repository.dart';
import 'package:todo_app/app/modules/categorias/categorias_module.dart';
import 'package:todo_app/app/shared/custom_drawer/custom_drawer_controller.dart';
import 'package:todo_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/app/app_widget.dart';
import 'package:todo_app/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DbConnectionService()),
        Bind((i) => DbConnectionRepository()),
        Bind((i) => CustomDrawerController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/categorias', module: CategoriasModule()),
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
