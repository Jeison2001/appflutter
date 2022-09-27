import 'package:flutter/material.dart';

import '../../../dominio/modelos/usuario.dart';

class listarUsuario extends StatefulWidget {
  @override
  _listarUsuarioState createState() => _listarUsuarioState();
}

class _listarUsuarioState extends State<listarUsuario> {
  final List<Usuario> _usuarios = listUsuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listar Usuario'),
        ),
        body: ListView.builder(
          itemCount: _usuarios.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_usuarios[index].usuario),
            subtitle: Text(_usuarios[index].password),
          ),
        ));
  }
}
