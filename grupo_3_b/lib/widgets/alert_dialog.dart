import 'package:flutter/material.dart';

class AlertDialogDatabaseResponse extends StatelessWidget {
  final String title;
  final String? content;
  final List<Widget> button;
  const AlertDialogDatabaseResponse(
      {super.key, required this.title, this.content, required this.button});

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
      actions: button
    );
  }
}
