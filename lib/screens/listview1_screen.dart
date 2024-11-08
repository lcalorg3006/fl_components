import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
   final options = const['Taragaruen','Stark','Lannister','Barathaon'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('list1view tipo 1'),
      ),
      body: ListView(
       /* children: const [
        /*ListTile(
          leading: Icon(Icons.access_time_sharp),
          title:Text('hola mundo')
        )*/
*/      
        children:[
          //mapa para ir iterando dentro de la lista
          ...options.map((e) =>
           ListTile(
          //leading: Icon(Icons.arrow_forward_ios_outlined),// el icono a la izquierta
          trailing: Icon(Icons.arrow_forward_ios_outlined),// el icono a la derecha
          title:Text(e),)
          ).toList()
        ],
      )
    );
  }
}