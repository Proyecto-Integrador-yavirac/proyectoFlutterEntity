import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/providers.dart';
import '../widgets/alert_dialog.dart';
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
      'numeroEmpleados': 0.toString(),
      'fechaCreacion': DateTime.now().toString(),
    };

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Formulario'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 92, 96, 185),
                Color.fromARGB(255, 2, 28, 90)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: CustomForm(
        empresaKey: empresaKey,
        empresaValues: empresaValues,
        onChanged: () => {
          empresaProvider.createEmpresa(empresaValues),
          showDialog(
              context: context,
              builder: (BuildContext context) =>
                  const AlertDialogDatabaseResponse(
                      title: "Se ha creado exitosamente")),
        },
      )),
    );
  }
}
