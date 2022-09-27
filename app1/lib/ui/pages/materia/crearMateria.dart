import 'package:flutter/material.dart';

import '../../../dominio/modelos/materia.dart';

class CrearMateria extends StatefulWidget {
  const CrearMateria({Key? key}) : super(key: key);

  @override
  State<CrearMateria> createState() => _CrearMateriaState();
}

class _CrearMateriaState extends State<CrearMateria> {
  final List<Materia> _materia = [];

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _profesorController = TextEditingController();
  final TextEditingController _notaController = TextEditingController();
  final TextEditingController _creditosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Materia'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TextField(
            controller: _nombreController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              hintText: 'Ingrese el nombre de la materia',
              labelText: 'Nombre',
              filled: true,
            ),
          ),
          TextField(
            controller: _profesorController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              labelText: 'Profesor',
              filled: true,
              hintText: 'Ingrese el nombre del profesor',
            ),
          ),
          TextField(
            controller: _notaController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              labelText: 'Nota',
              filled: true,
              hintText: 'Ingrese la nota',
            ),
          ),
          TextField(
            controller: _creditosController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              labelText: 'Credito',
              filled: true,
              hintText: 'Ingrese los creditos',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _materia.add(Materia(
                  nombre: _nombreController.text,
                  profesor: _profesorController.text,
                  nota: double.parse(_notaController.text),
                  creditos: int.parse(_creditosController.text),
                ));
                Navigator.pop(context, _materia);
              },
              child: const Text('Guardar'))
        ],
      ),
    );
  }
}
