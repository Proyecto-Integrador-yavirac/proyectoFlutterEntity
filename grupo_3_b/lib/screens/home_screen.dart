import 'package:flutter/material.dart';

import '../routers/routers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 255, 255),
        appBar: AppBar(
          title: const Text('Home Screen Arriba'),
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
          elevation: 20,
          titleSpacing: 20,
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(152, 41, 5, 119),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          menuOptions[index].name,
                          style: TextStyle(
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
