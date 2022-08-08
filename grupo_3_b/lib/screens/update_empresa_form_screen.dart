import 'package:flutter/material.dart';
import 'package:grupo_3_b/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';

class UpdateEmpresaForm extends StatelessWidget {
  final Map<String, dynamic> empresaValues;

  const UpdateEmpresaForm({Key? key, required this.empresaValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> empresaKey = GlobalKey<FormState>();
    final empresaProvider = Provider.of<EmpresaProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
          child: CustomForm(
        empresaKey: empresaKey,
        empresaValues: empresaValues,
        onChanged: () =>
            {empresaProvider.updateEmpresa(empresaValues['id'], empresaValues)},
      )),
    );
  }
}
