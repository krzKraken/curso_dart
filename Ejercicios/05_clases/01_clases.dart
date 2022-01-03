import 'clases/persona.dart';

///
/// Clases
///
void main(List<String> args) {
  final persona = {
    'nombre': 'Joss',
    'edad': 25,
  };

  print(persona['edad']);

  final persona2 = new Persona(edad: 33, nombre: 'Pedrito de los palotes');
  // Forma normal
  persona2.nombre = 'Cristhian';
  persona2.edad = 30;
  // persona2.bio = 'Nacio en algun lado';
  // Forma mejor
  persona2
    ..nombre = 'Joselin'
    ..edad = 25;
  // ..bio = 'Amaguana';

  print(persona2);

  //Llamando al get como una propiedad privada => get
  print(persona2.bio);

  persona2.bio = 'Esta es una nueva direccion'; //=> Set en uso
  print(persona2.bio);

  //Otra forma con sobrecarga
  Persona persona3 = Persona.persona30('Kriz');
  print(
      'Nombre: ${persona3.nombre}, Edad: ${persona3.edad}, Bio: ${persona3.bio}');

  Persona persona4 = Persona.persona40('Joss', 25, 'Mi novia <3');
  print(
      'Nombre: ${persona4.nombre}, Edad: ${persona4.edad}, Bio: ${persona4.bio}');
}
