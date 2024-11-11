import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepOrange;
  static final ThemeData lightTheme =  ThemeData.light().copyWith( // sobre escribe las propiedades
           
           //color primario
           primaryColor: Colors.deepOrange,
        //tema al appbar

        //color primario
        appBarTheme: const AppBarTheme(
        color: Colors.deepOrange,
        ),
        // para que los iconos salgan naranja tambien
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.deepOrange,
      )
      );
       //theme:themeData.dark   // modo oscuro
}