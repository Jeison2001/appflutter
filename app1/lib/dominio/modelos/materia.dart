// ignore_for_file: public_member_api_docs, sort_constructors_first
class Materia {
  var nombre;
  var creditos;
  var profesor;
  var nota;
  Materia({
    required this.nombre,
    required this.creditos,
    required this.profesor,
    required this.nota,
  });
}

List<Materia> listaMateria = [
  Materia(
    nombre: 'Matematicas',
    creditos: 4,
    profesor: 'Juan',
    nota: 4.5,
  ),
  Materia(
    nombre: 'Fisica',
    creditos: 4,
    profesor: 'Pedro',
    nota: 4.5,
  ),
  Materia(
    nombre: 'Quimica',
    creditos: 4,
    profesor: 'Maria',
    nota: 4.5,
  ),
  Materia(
    nombre: 'Ingles',
    creditos: 4,
    profesor: 'Luis',
    nota: 4.5,
  ),
  Materia(
    nombre: 'Programacion',
    creditos: 4,
    profesor: 'Jose',
    nota: 4.5,
  ),
  Materia(
    nombre: 'Historia',
    creditos: 4,
    profesor: 'Carlos',
    nota: 4.5,
  ),
  Materia(
    nombre: 'Geografia',
    creditos: 4,
    profesor: 'Luisa',
    nota: 4.5,
  ),
];
