// ignore_for_file: public_member_api_docs, sort_constructors_first
class Empleado {
  var nombre;
  var apellido;
  var telefono;
  var fnac;
  Empleado({
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.fnac,
  });
}

List<Empleado> listEmpleados = [
  Empleado(
    nombre: 'Juan',
    apellido: 'Perez',
    telefono: '809-555-5555',
    fnac: DateTime(1990, 11, 11),
  ),
  Empleado(
    nombre: 'Maria',
    apellido: 'Martinez',
    telefono: '809-555-5555',
    fnac: DateTime(1990, 01, 21),
  ),
  Empleado(
    nombre: 'Pedro',
    apellido: 'Gomez',
    telefono: '809-555-5555',
    fnac: DateTime(1990, 02, 11),
  ),
];
