import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Taragaruen', 'Stark', 'Lannister', 'Barathaon'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('list2view tipo 2'),
          //backgroundColor: Colors.blueAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                title: Text(options[index]),
                onTap: (){
                  final casa = options[index];
                  print(casa);
                }
                ,// se sombrea donde pulsas
                    ), //devuelve cada uno de los items que tiene la lista
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length) // especificas el numero de elementos que va a tener la  lista

        );
  }
}