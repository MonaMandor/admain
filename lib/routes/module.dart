// routes/module.dart

import 'package:admain/routes/binds.dart';
import 'package:flutter_modular/flutter_modular.dart';


import 'modular_routes.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => modularBinds;

  @override
  List<ModularRoute> get routes => modularRoutes;
}
