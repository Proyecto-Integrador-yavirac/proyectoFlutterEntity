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
  int numeroEmpleados;
  DateTime? fechaCreacion;

  Empresa(
      {this.id,
      required this.ruc,
      required this.nombre,
      required this.estado,
      this.telefono,
      this.descripcion,
      this.email,
      this.direccion,
      required this.numeroEmpleados,
      this.fechaCreacion});

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
        numeroEmpleados: json["numeroEmpleados"],
        fechaCreacion: json["fechaCreacion"],
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
        "numeroEmpleados": numeroEmpleados,
        "fechaCreacion": fechaCreacion,
      };
}
