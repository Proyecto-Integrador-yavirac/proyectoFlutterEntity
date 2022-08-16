import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../providers/providers.dart';
import '../themes/theme.dart';
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
      'fechaCreacion':
          DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
    };
//Scaffold hEasdasdasdasd
    return Scaffold(
      backgroundColor: AppTheme.primary,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Formulario'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: AppTheme.graduado),
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
              builder: (BuildContext context) => AlertDialogDatabaseResponse(
                    title: "Se ha creado exitosamente",
                    button: [
                      TextButton(
                        child: const Text('Aceptar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  )),
        },
      )),
    );
  }
}
