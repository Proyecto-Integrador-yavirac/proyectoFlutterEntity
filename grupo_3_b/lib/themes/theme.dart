import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 2, 3, 74);
  static const Gradient graduado = LinearGradient(
              colors: [
                Color.fromARGB(255, 45, 52, 190),
                Color.fromARGB(255, 0, 29, 95)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color:Color.fromARGB(255, 59, 209, 255), fontSize: 20, fontWeight:FontWeight.w700),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 59, 209, 255),width: 2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ))));
}
