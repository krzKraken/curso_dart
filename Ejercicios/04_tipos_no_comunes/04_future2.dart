import 'dart:io';

void main() {
  File file = new File('Ejercicios/04_tipos_no_comunes/assets/personas.txt');

  //FUTURE ASINCRONO
  Future<String> f = file.readAsString();
  // Forma normal de consumir Future
  f.then((data) => data);
  // Forma resumida de consumir el Future
  f.then(print);

  print('Fin del main');

  print('Future sincrono: ');
  //FUTURE SINCRONO
  String g = file.readAsStringSync();

  print(g);
}
