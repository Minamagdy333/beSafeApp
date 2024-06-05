import 'package:flutter/material.dart';

class MyThemeData {
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff52B788),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
      backgroundColor: Color(0XFF0a5c70),
      type: BottomNavigationBarType.fixed,
    ),
  );
}
