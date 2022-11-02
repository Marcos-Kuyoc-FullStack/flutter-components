import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('inputs y forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: const [
            CustomTextFormField(
              hintText: 'Nombre del usuario',
              labelText: 'Nombre',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: 'Apellido del usuario',
              labelText: 'Apellido',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: 'Correo del usuario',
              labelText: 'Correo',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: 'Contraseña del usuario',
              labelText: 'Contraseña',
              obscureText: true,
            ),
          ],
        ),
      )),
    );
  }
}
