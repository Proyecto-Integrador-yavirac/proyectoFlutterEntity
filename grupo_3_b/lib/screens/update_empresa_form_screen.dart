import 'package:flutter/material.dart';
import 'package:grupo_3_b/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';
import '../themes/theme.dart';

class UpdateEmpresaForm extends StatelessWidget {
  final Map<String, dynamic> empresaValues;

  const UpdateEmpresaForm({Key? key, required this.empresaValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> valores = empresaValues;
    final GlobalKey<FormState> empresaKey = GlobalKey<FormState>();
    final empresaProvider = Provider.of<EmpresaProvider>(context);

    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
          elevation: 0,
          title: const Text('Formulario edita'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(gradient: AppTheme.graduado),
          )),
      body: SingleChildScrollView(
          child: CustomForm(
              empresaKey: empresaKey,
              empresaValues: valores,
              onChanged: () => {
                    empresaProvider.updateEmpresa(valores),
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertDialogDatabaseResponse(
                              title: "Se ha actualizado exitosamente",
                              button: [
                                TextButton(
                                  child: Text('Aceptar'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            )),
                  })),
    );
  }
}
