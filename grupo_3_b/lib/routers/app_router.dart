import 'package:flutter/material.dart';
import 'package:grupo_3_b/screens/screens.dart';

import '../models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <EmpresaOption>[
    EmpresaOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    EmpresaOption(
        route: 'empresa-list',
        icon: Icons.list,
        name: 'Empresa List',
        screen: const EmpresaList()),
    EmpresaOption(
        route: 'empresa-form',
        icon: Icons.forum_outlined,
        name: 'Empresa Form',
        screen: const CreateEmpresaForm())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (final menuOption in menuOptions) {
      routes.addAll(
          {menuOption.route: (BuildContext context) => menuOption.screen});
    }
    return routes;
  }
}
