import 'package:flutter/material.dart';

class CustomNavigatorBottom extends StatelessWidget {
  const CustomNavigatorBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF6200EE),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        Navigator.of(context).pushReplacementNamed("/home");
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Form',
          icon: Icon(Icons.format_align_justify_outlined),
        ),
        BottomNavigationBarItem(label: 'List', icon: Icon(Icons.list)),
      ],
    );
  }
}
