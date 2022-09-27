import 'package:flutter/material.dart';
import '../../../dominio/modelos/empleados.dart';
import 'creareEmpleado.dart';

class ListarEmpleado extends StatefulWidget {
  const ListarEmpleado({Key? key}) : super(key: key);
  @override
  State<ListarEmpleado> createState() => _ListarEmpleadoState();
}

class _ListarEmpleadoState extends State<ListarEmpleado> {
  final List<Empleado> _empleados = listEmpleados;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Empleado'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _empleados.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                child: Text(_empleados[index].nombre.substring(0, 1) +
                    _empleados[index].apellido.substring(0, 1)),
              ),
              title: Text(
                  _empleados[index].nombre + ' ' + _empleados[index].apellido),
              subtitle: Text(_empleados[index].telefono),
              trailing: const Icon(Icons.call),
              onLongPress: () {
                _eliminarEmpleado(context, _empleados[index]);
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CrearEmpleado(gestionEmpleado: _empleados[index]);
                    },
                  ),
                ).then((resultado) {
                  if (resultado != null) {
                    _empleados[index] = resultado[0];
                    setState(() {});
                  }
                });
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CrearEmpleado(
                    gestionEmpleado: Empleado(
                        nombre: '', apellido: '', telefono: '', fnac: null));
              },
            ),
          ).then((resultado) {
            _empleados.addAll(resultado);
            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _eliminarEmpleado(context, Empleado elempleado) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: const Text('Eliminar Empleado'),
            content: Text(
                '¿Esta seguro de eliminar el empleado ${elempleado.nombre}?'),
            actions: [
              TextButton(
                  onPressed: () {
                    _empleados.remove(elempleado);
                    setState(() {});
                    Navigator.pop(context, _empleados);
                  },
                  child: const Text(
                    'Eliminar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.green),
                  )),
            ],
          );
        });
  }
}
