import 'package:flutter/material.dart';
import 'package:prova_jokenpo/view/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.green),
        bodyMedium: TextStyle(color: Colors.green),
        bodySmall: TextStyle(color: Colors.green),
        headlineLarge: TextStyle(color: Colors.green),
        headlineMedium: TextStyle(color: Colors.green),
        headlineSmall: TextStyle(color: Colors.green),
      ),
      scaffoldBackgroundColor: Colors.black,

    ),
  ));
}
