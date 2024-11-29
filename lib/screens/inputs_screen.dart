import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("From: Inputs"),
        ),
        body: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                customTextFormField(
                  hintText: 'Nombre',
                  labelText: 'Nombre del usuario',
                  helperText: 'Solo Letras',
                  icon: Icons.verified_outlined,
                  suffixIcon: Icons.person_2_rounded,
                  obscureText: false,
                ),
                SizedBox(
                  height: 30,
                ),
                customTextFormField(
                  hintText: 'Apellidos',
                  labelText: 'Apellidos del usuario',
                  icon: Icons.person_4_outlined,
                  obscureText: false,
                ),
                SizedBox(
                  height: 30,
                ),
                customTextFormField(
                  hintText: 'E-mail',
                  labelText: 'E-mail del usuario',
                  icon: Icons.email_rounded,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 30,
                ),
                customTextFormField(
                  hintText: 'Contraseña',
                  labelText: 'Contraseña del usuario',
                  icon: Icons.password_rounded,
                  obscureText: true,
                ),
              ],
            )));
  }
}
