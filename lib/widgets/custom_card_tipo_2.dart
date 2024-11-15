import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  
  final String imageUrl;
  final String? nombre;
  const CustomCardTipo2({super.key, required this.imageUrl, this.nombre});

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
         FadeInImage(
          image: NetworkImage( imageUrl ), 
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 260,
          // quitar margenes
          fit:BoxFit.cover,
  // especificamos duracion
          fadeInDuration: const Duration(milliseconds: 3000),
          ),

          // si el nombre no es null  le ponemos leyenda disaparece el container de abajo
          if(nombre != null)
          //leyendo a la imagen
          Container(
            //alinea el texto a la derecha de un alignment
            alignment: AlignmentDirectional.centerEnd,
            //separacion de 10, no este todo pegado al borde de la derecha
            padding: const EdgeInsets.only(top:10, bottom: 10, right: 20),
            child: Text( nombre ?? 'desconocido' )
            )
        ],
      ),
    );
  }
}