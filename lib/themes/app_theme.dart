import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,
      // AppBar Them
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));

  static final ThemeData darkTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: Colors.indigo,
      // AppBar Them
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}