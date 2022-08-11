import 'package:flutter/material.dart';
import 'package:grupo_3_b/themes/theme.dart';

import '../routers/routers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 255, 255),
        appBar: AppBar(
          title: const Text('Empresas'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: AppTheme.graduado
            ),
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
                child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(152, 41, 5, 119),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          menuOptions[index].name,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 246, 245, 245),
                          ),
                        ),
                      ],
                    )),
              );
            },
            itemCount: menuOptions.length,
          ),
        ));
  }
}
