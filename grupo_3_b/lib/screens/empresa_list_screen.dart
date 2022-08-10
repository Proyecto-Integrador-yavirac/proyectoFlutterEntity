import 'package:flutter/material.dart';
import 'package:grupo_3_b/providers/providers.dart';
import 'package:grupo_3_b/screens/screens.dart';
import 'package:provider/provider.dart';

class EmpresaList extends StatelessWidget {
  const EmpresaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final empresaProvider = Provider.of<EmpresaProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
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
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(
                  Icons.apartment,
                ),
                title: Row(
                  children: [
                    const Text("Ruc:"),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text("Nombre:"),
                    Text(empresaProvider.empresas[index].nombre)
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
