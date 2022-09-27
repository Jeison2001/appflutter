import 'package:app1/ui/widgets/texfield.dart';
import 'package:flutter/material.dart';

import '../../../dominio/modelos/materia.dart';

class EditarMateria extends StatefulWidget {
  const EditarMateria({Key? key, required this.gestionmateria})
      : super(key: key);
  final Materia gestionmateria;

  @override
  State<EditarMateria> createState() => _EditarMateriaState();
}

class _EditarMateriaState extends State<EditarMateria> {
  late Materia materia;
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController profesorController = TextEditingController();
  final TextEditingController notaController = TextEditingController();
  final TextEditingController creditosController = TextEditingController();

  @override
  void initState() {
    nombreController.text = widget.gestionmateria.nombre;
    profesorController.text = widget.gestionmateria.profesor;
    notaController.text = widget.gestionmateria.nota.toString();
    creditosController.text = widget.gestionmateria.creditos.toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Materia'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Textos(controlgestion: nombreController, label: "Nombre"),
          Textos(controlgestion: profesorController, label: "Profesor"),
          Textos(controlgestion: notaController, label: "Nota"),
          Textos(controlgestion: creditosController, label: "Creditos"),
          ElevatedButton(
              onPressed: () {
                Materia materiaEdit = Materia(
                  nombre: nombreController.text,
                  profesor: profesorController.text,
                  nota: double.parse(notaController.text),
                  creditos: int.parse(creditosController.text),
                );
                Navigator.pop(context, materiaEdit);
              },
              child: const Text('Guardar Cambios'))
        ],
      ),
    );
  }
}
