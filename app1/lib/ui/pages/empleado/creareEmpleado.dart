import 'package:flutter/material.dart';

import '../../../dominio/modelos/empleados.dart';
import '../../widgets/texfield.dart';

class CrearEmpleado extends StatefulWidget {
  final Empleado gestionEmpleado;
  const CrearEmpleado({Key? key, required this.gestionEmpleado})
      : super(key: key);

  @override
  State<CrearEmpleado> createState() => _CrearEmpleadoState();
}

class _CrearEmpleadoState extends State<CrearEmpleado> {
  final List<Empleado> _empleados = [];
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controltelefono = TextEditingController();
  DateTime fecha = DateTime(1991, 01, 01);

  @override
  void initState() {
    controlnombre.text = widget.gestionEmpleado.nombre;
    controlapellido.text = widget.gestionEmpleado.apellido;
    controltelefono.text = widget.gestionEmpleado.telefono;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Agregar Empleado'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Textos(controlgestion: controlnombre, label: 'Nombre'),
            Textos(controlgestion: controlapellido, label: 'Apellido'),
            Textos(controlgestion: controltelefono, label: 'Telefono'),
            ElevatedButton(
              onPressed: () {
                _empleados.add(Empleado(
                    nombre: controlnombre.text,
                    apellido: controlapellido.text,
                    telefono: controltelefono.text,
                    fnac: fecha));

                Navigator.pop(context, _empleados);
              },
              child: const Text("Guardar Empleado"),
            ),
          ],
        ));
  }
}
