import 'package:flutter/material.dart';
import 'package:grupo_3_b/providers/providers.dart';
import 'package:provider/provider.dart';

class EmpresaList extends StatelessWidget {
  const EmpresaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final empresaProvider = Provider.of<EmpresaProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Empresa'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(
                  Icons.people,
                ),
                title: Text(empresaProvider.empresas[index].ruc),
                onTap: () {
                  Navigator.pushNamed(context, 'empresa-form');
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: empresaProvider.empresas.length),
    );
  }
}
