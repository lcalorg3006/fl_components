import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: true,// fuera de la alerta se sale
      context: context,
       builder: (context){
        return  AlertDialog(
          title: Text('Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Este es el contenido de la alerta"),
              SizedBox(height: 10),//espacio
              FlutterLogo(size: 100)
            ],
          ),
        );
       });
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed:() => displayDialog(context),
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: const Text('mostrar alerta', style: TextStyle(fontSize: 20),),
           ))
      ),
      // boton flotante para cerrar
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed:()=> Navigator.pop(context)
        ),
    );
  }
}

