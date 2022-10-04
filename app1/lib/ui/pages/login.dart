import 'package:app1/dominio/modelos/usuario.dart';
import 'package:app1/ui/pages/empleado/listarEmpleado.dart';
import 'package:app1/ui/pages/registro.dart';
import 'package:app1/ui/pages/ususario/listarUsuario.dart';
import 'package:flutter/material.dart';

import '../widgets/textfield_login_registro.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          Flexible(
            child: textfield_login_registro(
                labelText: 'Usuario',
                hintText: 'Ingrese su usuario',
                controller: _user),
          ),
          Flexible(
            child: textfield_login_registro(
                labelText: 'Contraseña',
                hintText: 'Ingrese su contraseña',
                controller: _password),
          ),
          Flexible(
            child: ElevatedButton(
              onPressed: () {
                bool verdad = false;
                for (var element in listUsuario) {
                  if (element.usuario == _user.text &&
                      element.password == _password.text) {
                    verdad = true;
                  }
                }
                if (verdad == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ListarEmpleado();
                      },
                    ),
                  );
                }
              },
              child: const Text('Ingresar'),
            ),
          ),
          Flexible(
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RegisterPage();
                }));
              },
              child: const Text('Sin cuenta? Registrarse'),
            ),
          ),
        ],
      ),
    );
  }
}
