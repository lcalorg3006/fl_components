import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData lightTheme =  ThemeData.light().copyWith( // sobre escribe las propiedades
           
           //color primario
           primaryColor: primary,
        //tema al appbar

        //color primario
        appBarTheme: const AppBarTheme(
        color: primary,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        iconTheme: IconThemeData(color: Colors.white)
        ),
        // para que los iconos salgan naranja tambien
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),

      );
       //theme:themeData.dark   // modo oscuro
}