import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width1 = 50; // barra baja privada
  double _height1 = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: Container(
          // container muy similar a div
          width: _width1,
          height: _height1,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        /* onPressed: (){
          _width = 200;
          _height = 300;
          setState(() {
            
          });
          // TAREA CREAR UNA FUNCION ALEATORIO QUE CREE WIDTH Y HEIGH DE FORMA ALEATORIO CON LIMITES
          // var intValue = Random().nextInt(300);
          // intValue = Random.nextInt(300)+20
          // PARA EL COLOR CREAR UNA LISTA CON VARIOS COLORES Y QUE ESCOGA ALEATORIAMENTE UNA POSICION DE LA LISTA
          /*
          onPressed:(){
          _width = _random.nextDouble() * 300+1;
          _color = Color(_random.nextDouble() * 0xFFFFFF).toInt()).widtOpacity(1.0);
          setState((){
          }
          }
          */ 
        },*/

        child: const Icon(Icons.play_circle, size: 35),
        onPressed: () {
          _width1 = _random.nextDouble() * 300 + 1;
          _height1 = _random.nextDouble() * 300 + 1;
          _color =
              Color((_random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
          setState(() {});
        },
      ),
    );
  }
}
