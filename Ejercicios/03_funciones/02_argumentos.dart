/**
 * Funciones con argumentos
 */

// 1. Funcion con argumentos posicional y opcional
void saludar(String nombre, [String? apellido]) {
  print('Saludar: $nombre $apellido');
}

//
// 2. Funcion con argumentos por nombre con parametros obligatorios
//u opcionales
void saludar2({
  required String nombre,
  String? apellido,
  int? edad,
}) {
  print('Saludar2: $nombre $apellido - $edad');
}

//3.  Funcion mixta, argumento posicional y argumento por nombre
void saludar3(String mensaje, {String? nombre, int? edad}) {
  print('$mensaje $nombre -  $edad');
}

void main(List<String> args) {
  saludar('Joss', 'Sandoval');
  saludar2(nombre: 'Cristhian');
  saludar3('Hola', nombre: 'Cristhian', edad: 30);
}
