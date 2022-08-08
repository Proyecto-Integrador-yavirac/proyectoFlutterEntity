import 'package:flutter/material.dart';

import '../routers/routers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      drawer: Drawer(
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    leading: Icon(menuOptions[index].icon),
                    title: Text(menuOptions[index].name),
                    onTap: () {
                      Navigator.pushNamed(context, menuOptions[index].route);
                    },
                  ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: menuOptions.length)),
      body: const Text('Hola'),
    );
  }
}
