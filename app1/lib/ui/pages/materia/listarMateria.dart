import 'package:app1/dominio/modelos/materia.dart';
import 'package:app1/ui/pages/materia/editarMateria.dart';
import 'package:flutter/material.dart';

import 'crearMateria.dart';

class ListarMateria extends StatefulWidget {
  const ListarMateria({Key? key}) : super(key: key);

  @override
  State<ListarMateria> createState() => _ListarMateriaState();
}

class _ListarMateriaState extends State<ListarMateria> {
  final List<Materia> _materia = listaMateria;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listar Materia'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _materia.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return EditarMateria(gestionmateria: _materia[index]);
                }),
              ).then((resultado) {
                if (resultado != null) {
                  _materia[index] = resultado;
                  setState(() {});
                }
              });
            },
            leading: CircleAvatar(
              child: Text(_materia[index].nota.toString()),
            ),
            title: Text(_materia[index].nombre),
            subtitle: Text(_materia[index].profesor),
            trailing: CircleAvatar(
              radius: 20,
              child: Text(_materia[index].creditos.toString()),
            ),
            onLongPress: () {
              _eliminarMateria(context, _materia[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const CrearMateria();
              },
            ),
          ).then((resultado) {
            _materia.addAll(resultado);
            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _eliminarMateria(context, Materia materia) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: const Text('Eliminar Materia'),
            content:
                Text('¿Esta seguro de eliminar la materia ${materia.nombre}?'),
            actions: [
              TextButton(
                  onPressed: () {
                    _materia.remove(materia);
                    setState(() {});
                    Navigator.pop(context, _materia);
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
