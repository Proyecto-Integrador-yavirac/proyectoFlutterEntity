import 'dart:convert';

class Empresa {
  int? id;
  String ruc;
  String nombre;
  bool estado;
  String? telefono;
  String? descripcion;
  String? email;
  String? direccion;
  int numeroDeEmpleados;
  DateTime? fechaDeCreacion;

  Empresa(
      {this.id,
      required this.ruc,
      required this.nombre,
      required this.estado,
      this.telefono,
      this.descripcion,
      this.email,
      this.direccion,
      required this.numeroDeEmpleados,
      this.fechaDeCreacion});

  factory Empresa.fromJson(String str) => Empresa.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Empresa.fromMap(Map<String, dynamic> json) => Empresa(
        id: json["id"],
        ruc: json["ruc"],
        nombre: json["nombre"],
        estado: json["estado"],
        email: json["email"],
        telefono: json["telefono"],
        descripcion: json["descripcion"],
        numeroDeEmpleados: json["numeroDeEmpleados"],
        fechaDeCreacion: json["fechaDeCreacion"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "ruc": ruc,
        "nombre": nombre,
        "estado": estado,
        "telefono": telefono,
        "descripcion": descripcion,
        "email": email,
        "direccion": direccion,
        "numeroDeEmpleados": numeroDeEmpleados,
        "fechaDeCreacion": fechaDeCreacion,
      };
}
