
import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;// para el cammpo contraseña que no aparezca
  
  const customTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Lorena Calderon',// que aparezca por defecto es un coñazp porque tienes que borrar
      textCapitalization: TextCapitalization.words,// la primera en mayuscula
      keyboardType: keyboardType, // para que salga el @ en la pantalla principal
      obscureText: obscureText,
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
      decoration:  InputDecoration(
        hintText: hintText,// aparezca en el fondo como si fuero por defecto
        labelText: labelText,// arriba
        helperText: helperText,// aparece debajo
        suffixIcon: Icon(suffixIcon) ,// icono de a la derecha
        //prefixIcon: Icon(Icons.verified_user_outlined),// icono de la izquierda de validacion
        icon:Icon(icon),// icono de la izquierda pero desplaza la linea
        // border
       // border:OutlineInputBorder(
        //  borderRadius: BorderRadius.only(
         //   bottomLeft: Radius.circular(10),
        //    topRight: Radius.circular(10),
        //  )
        //)
    // elevatedButton
    
      ),
    );
  }
}