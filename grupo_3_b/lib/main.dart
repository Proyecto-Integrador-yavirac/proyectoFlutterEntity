import 'package:flutter/material.dart';
import 'package:grupo_3_b/providers/providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EmpresaProvider(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}
