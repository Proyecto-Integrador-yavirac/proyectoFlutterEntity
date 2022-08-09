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
    final Map<String, dynamic> valores = empresaValues;
    final GlobalKey<FormState> empresaKey = GlobalKey<FormState>();
    final empresaProvider = Provider.of<EmpresaProvider>(context);

    return Scaffold(
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
          )),
      body: SingleChildScrollView(
          child: CustomForm(
              empresaKey: empresaKey,
              empresaValues: valores,
              onChanged: () => {
                    empresaProvider.updateEmpresa(valores),
                    Navigator.pop(context)
                  })),
    );
  }
}
