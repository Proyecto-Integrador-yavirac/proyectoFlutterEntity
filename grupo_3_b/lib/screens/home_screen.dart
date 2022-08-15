import 'package:flutter/material.dart';
import 'package:grupo_3_b/themes/theme.dart';

import '../routers/routers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        backgroundColor: AppTheme.primary,
        appBar: AppBar(
          title: const Text('Empresas'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(gradient: AppTheme.graduado),
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/welcomes.png'), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(top: 375),
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
                        border: Border.all(
                          color: const Color.fromARGB(255, 59, 209, 255),
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 45, 52, 190),
                            Color.fromARGB(255, 0, 29, 95)
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            menuOptions[index].name,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 246, 245, 245),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                );
              },
              itemCount: menuOptions.length,
            ),
          ),
        ));
  }
}
