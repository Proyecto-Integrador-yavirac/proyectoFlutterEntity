import 'package:flutter/material.dart';

class AlertDialogDatabaseResponse extends StatelessWidget {
  final String title;
  final String? content;

  const AlertDialogDatabaseResponse(
      {super.key, required this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Estado de Transaccion'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(title),
            Text(content ?? ''),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Aceptar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
