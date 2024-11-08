import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("Componentes de Flutter"),
      backgroundColor: Colors.blueAccent,
      
     ),
      body: ListView.separated(
        itemBuilder:(context, index)=>ListTile(
          leading: const Icon(Icons.access_time_filled_outlined),
          title: const Text("Nombre de ruta"),
          onTap: (){
            final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            Navigator.push(context, route);
          }
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
        ),
      );
    
  }
}