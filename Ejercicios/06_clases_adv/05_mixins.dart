import 'dart:collection';

/**
 * Podemos utilizar los mixins para darle las propiedades
 * y metodos a otra clase 
 */

//Clase Logger
mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: texto');
  }
}

class Persona {
  String? nombre;
  String? apellido;
  int? edad = 34;

  Persona(this.nombre, this.apellido, this.edad);

  void imprimirPersona() {
    print('Nombre: $nombre $apellido   Edad: $edad');
  }
}

class Alumno extends Persona with Logger {
  String? colegio;

  //Con super constructor
  Alumno(
      String nombreActual, String apellidoActual, int edadActual, this.colegio)
      : super(nombreActual, apellidoActual, edadActual);

  imprimirAlumno() {
    print('Alumno: $nombre $apellido con edad: $edad del Colegio: $colegio');
  }
}

void main(List<String> args) {
  final cris = new Alumno('Crithian', 'Miranda', 30, 'CristoRey');
  print(cris.nombre);
  print(cris.apellido);
  print(cris.edad);
  print(cris.colegio);
  cris.imprimir('loggeeeeeeeer');
}
