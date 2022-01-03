import 'dart:io';

main() {
  //Imprimir en terminal
  stdout.write('hola ???');
  //Imprimir en terminal con salto de linea
  stdout.writeln('Con salgo de linea');
  //Obtener informacion del usuario

  stdout.write('Ingrese el nombre1: ');
  String? nombre = stdin.readLineSync(); // Una forma para null safety

  stdout.writeln('Su nombre2 es: $nombre');

  stdout.writeln('Ingrese nombre 2: ');
  String nombre2 = stdin.readLineSync() ??
      'nombre2 por defecto'; // Otra forma de Null safety
  stdout.writeln('Su nombre2 es: $nombre2');
}
