import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:grupo_3_b/models/empresa.dart';
import 'package:http/http.dart' as http;

class EmpresaProvider extends ChangeNotifier {
  final String _baseUrl = 'localhost:8080';
  String language = 'es-ES';
  Empresa empresa = Empresa(
      ruc: '',
      nombre: '',
      estado: true,
      telefono: '',
      descripcion: '',
      email: '',
      direccion: '',
      numeroEmpleados: 0,
      fechaCreacion: '');

  final List<Empresa> empresas = [];

  EmpresaProvider() {
    getEmpresas();
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

  Future<Empresa> getEmpresa(id) async {
    var url = Uri.http(_baseUrl, 'api/empresa/$id');
    var response = await http.get(url);

    Map<String, dynamic> userMap = json.decode(response.body);

    empresa.ruc = userMap['ruc'];
    empresa.nombre = userMap['nombre'];
    empresa.estado = userMap['estado'];
    empresa.telefono = userMap['telefono'];
    empresa.descripcion = userMap['descripcion'];
    empresa.email = userMap['email'];
    empresa.direccion = userMap['direccion'];
    empresa.numeroEmpleados = userMap['numeroEmpleados'];
    empresa.fechaCreacion = userMap['fechaCreacion'];

    return empresa;
  }

  createEmpresa(request) async {
    var url = Uri.http(_baseUrl, 'api/empresa/save');
    await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request));
  }

  updateEmpresa(request) async {
    var url = Uri.http(_baseUrl, 'api/empresa/update');
    await http.put(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request));
  }

  deleteEmpresa(int? id) async {
    var url = Uri.http(_baseUrl, 'api/empresa/deleteById/$id');
    await http.delete(url);
  }
}
