import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // adecuar el contenido al espacio del widgetn y las esquinas redondeadas
      clipBehavior: Clip.antiAlias,
      // las esquinas muchos mas redondeados
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          const FadeInImage(
          image: NetworkImage('https://images7.alphacoders.com/928/928770.jpg',), 
          placeholder: AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 260,
          // quitar margenes
          fit:BoxFit.cover,
  // especificamos duracion
          fadeInDuration: Duration(milliseconds: 3000),
          ),
          //leyendo a la imagen
          Container(
            //alinea el texto a la derecha de un alignment
            alignment: AlignmentDirectional.centerEnd,
            //separacion de 10, no este todo pegado al borde de la derecha
            padding: const EdgeInsets.only(top:10, bottom: 10, right: 20),
            child: const Text('Final Fantasy 7')
            )
        ],
      ),
    );
  }
}