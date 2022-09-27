class Usuario {
  String usuario;
  String password;
  Usuario({required this.usuario, required this.password});
}

List<Usuario> listUsuario = [
  Usuario(usuario: 'Juan', password: '1234'),
  Usuario(usuario: 'Maria', password: '1234'),
  Usuario(usuario: 'Pedro', password: '1234'),
];
