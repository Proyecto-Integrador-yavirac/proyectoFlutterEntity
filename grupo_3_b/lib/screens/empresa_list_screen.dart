import 'package:flutter/material.dart';
import 'package:grupo_3_b/providers/providers.dart';
import 'package:grupo_3_b/screens/screens.dart';
import 'package:provider/provider.dart';

import '../themes/theme.dart';

class EmpresaList extends StatelessWidget {
  const EmpresaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final empresaProvider = Provider.of<EmpresaProvider>(context);
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        title: const Text('Lista'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: AppTheme.graduado
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(
                  Icons.apartment,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: Row(
                  children: [
                    const Text("Ruc:",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 209, 255))),
                    Text(empresaProvider.empresas[index].ruc,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text("Nombre:",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 209, 255))),
                    Text(empresaProvider.empresas[index].nombre,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)))
                  ],
                ),
                onTap: () {
                  Map<String, dynamic> empresa =
                      empresaProvider.empresas[index].toMap();

                  Navigator.push(
                      context,
                      (MaterialPageRoute(
                          builder: (context) => UpdateEmpresaForm(
                                empresaValues: empresa,
                              ))));
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: empresaProvider.empresas.length),
    );
  }
}
