import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("From: Inputs"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:Column(
          children: [
            TextFormField(
              autofocus: true,
              //initialValue: 'Lorena Calderon',// que aparezca por defecto es un coñazp porque tienes que borrar
              textCapitalization: TextCapitalization.words,// la primera en mayuscula
              onChanged: (value) { // para guardar  el valor del formulario
                print('value : $value');
              },
              // balidar si nuestro inpput tiene mas de 4 caracteres
              validator: (value){
                if(value!.length < 3){
                  return 'Minimo 3 Caracteres';
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: 'Nombre y apellido',// aparezca en el fondo como si fuero por defecto
                labelText: 'Nombre',// arriba
                helperText: 'solo letras',// aparece debajo
                suffixIcon: Icon(Icons.group_outlined) ,// icono de a la derecha
                //prefixIcon: Icon(Icons.verified_user_outlined),// icono de la izquierda de validacion
                icon:Icon(Icons.assignment_ind_outlined),// icono de la izquierda pero desplaza la linea
                // border
               // border:OutlineInputBorder(
                //  borderRadius: BorderRadius.only(
                 //   bottomLeft: Radius.circular(10),
                //    topRight: Radius.circular(10),
                //  )
                //)


              ),
            )
          ],
        )
      )
    );
  }
}