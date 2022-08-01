import 'package:flutter/material.dart' show IconData, Widget;

class EmpresaOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  EmpresaOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
