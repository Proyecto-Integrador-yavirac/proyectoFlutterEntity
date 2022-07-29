import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:grupo_3_b/models/empresa.dart';
import 'package:http/http.dart' as http;

class EmpresaProvider extends ChangeNotifier {
  String _baseUrl = 'localhost:8080';
  String language = 'es-ES';
  final List<Empresa> empresas = [];

  Future<List<Empresa>> getEmpresas() async {
    var url = Uri.http(_baseUrl, 'users');
    var response = await http.get(url);
    List<dynamic> usersList = json.decode(response.body);
    usersList.forEach((user) {
      final userTemp = Empresa.fromMap(user);
      empresas.add(userTemp);
    });
    return empresas;
  }
}
