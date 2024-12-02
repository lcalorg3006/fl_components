import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // sobre escribe las propiedades

      //color primario
      primaryColor: primary,
      //tema al appbar

      //color primario
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.white)),
      // para que los iconos salgan naranja tambien
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      // text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        shape: StadiumBorder(), //botton redonde
        elevation: 5, //sombreado
        foregroundColor: Colors.white, //texto en blanco
      ),
      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        elevation: 5,
      )),

      //inputDecoration
      inputDecorationTheme:  InputDecorationTheme(
        floatingLabelStyle:const  TextStyle(color: primary), // letra de arriba
        enabledBorder: OutlineInputBorder( // border sin foco
          borderSide: const BorderSide(color: primary),
          borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder( // border con foco
          borderSide: const BorderSide(color: primary),
          borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: primary,// barra
          thumbColor: primary,//circulo
        )
      
      );
  //theme:themeData.dark   // modo oscuro
}
