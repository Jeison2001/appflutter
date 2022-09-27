import 'package:app1/ui/pages/login.dart';
import 'package:flutter/material.dart';

import '../../dominio/modelos/usuario.dart';
import '../widgets/textfield_login_registro.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro'),
        ),
        body: Column(
          children: [
            textfield_login_registro(
                labelText: 'Usuario',
                hintText: 'Ingrese su usuario',
                controller: _user),
            textfield_login_registro(
                labelText: 'Contraseña',
                hintText: 'Ingrese su contraseña',
                controller: _password),
            ElevatedButton(
              onPressed: () {
                listUsuario.add(
                    Usuario(usuario: _user.text, password: _password.text));

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              child: const Text('Registrarse'),
            ),
          ],
        ));
  }
}
