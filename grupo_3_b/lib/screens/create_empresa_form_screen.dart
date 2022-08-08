import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

class CreateEmpresaForm extends StatelessWidget {
  const CreateEmpresaForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> empresaKey = GlobalKey<FormState>();
    final empresaProvider = Provider.of<EmpresaProvider>(context);
    final Map<String, dynamic> empresaValues = {
      'ruc': '',
      'nombre': '',
      'estado': true,
      'telefono': '',
      'descripcion': '',
      'email': '',
      'direccion': '',
      'numeroEmpleados': 0,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
          child: CustomForm(
        empresaKey: empresaKey,
        empresaValues: empresaValues,
        onChanged: () => {
          empresaProvider.createEmpresa(empresaValues),
          Navigator.pop(context)
        },
      )),
    );
  }
}
