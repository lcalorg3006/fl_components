import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
// recoger los valores del formulario en un map
    final Map<String, String> formValues = {
      'nombre':    'Lorena',
      'apellidos':    'Calderon Orgaz',
      'email':    'lcalorg3006@g.educaand.es',
      'password':     'lorena',
      'role':     'usuario'



    };
    return Scaffold(
        appBar: AppBar(
          title: const Text("From: Inputs"),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key:myFormKey,
              child: Column(
                children: [
                  customTextFormField(
                    hintText: 'Nombre',
                    labelText: 'Nombre del usuario',
                    helperText: 'Solo Letras',
                    icon: Icons.verified_outlined,
                    suffixIcon: Icons.person_2_rounded,
                    obscureText: false, 
                    formProperty: 'nombre',
                     formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  customTextFormField(
                    hintText: 'Apellidos',
                    labelText: 'Apellidos del usuario',
                    icon: Icons.person_4_outlined,
                    obscureText: false,
                       formProperty: 'apellidos',
                     formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  customTextFormField(
                    hintText: 'E-mail',
                    labelText: 'E-mail del usuario',
                    icon: Icons.email_rounded,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                       formProperty: 'e-mail',
                     formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  customTextFormField(
                    hintText: 'Contraseña',
                    labelText: 'Contraseña del usuario',
                    icon: Icons.password_rounded,
                    obscureText: true,
                       formProperty: 'Constraseña',
                     formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // desactivar el teclado
                        FocusScope.of(context).requestFocus(FocusNode());
                        if(!myFormKey.currentState!.validate()){
                          print('Formulario no valido');
                          return;
                        }
                        print(formValues);
                      },
                      child: SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Enviar'))),
                        
                          )
                ],
              ),
            )));
  }
}
