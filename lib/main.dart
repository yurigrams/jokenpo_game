import 'package:flutter/material.dart';
import 'package:prova_jokenpo/view/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.black26,

    ),
  ));
}
