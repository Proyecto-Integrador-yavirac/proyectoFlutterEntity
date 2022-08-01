import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:grupo_3_b/models/empresa.dart';
import 'package:http/http.dart' as http;

class EmpresaProvider extends ChangeNotifier {
  String _baseUrl = 'localhost:8080';
  String language = 'es-ES';
  final List<Empresa> empresas = [];

  EmpresaProvider() {
    getEmpresas();
    print('hola');
  }

  Future<List<Empresa>> getEmpresas() async {
    var url = Uri.http(_baseUrl, 'api/empresa/findAll');
    var response = await http.get(url);
    List<dynamic> usersList = json.decode(response.body);
    usersList.forEach((empresa) {
      final empresaTemp = Empresa.fromMap(empresa);
      empresas.add(empresaTemp);
    });
    return empresas;
  }
}
