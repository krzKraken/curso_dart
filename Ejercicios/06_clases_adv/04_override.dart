/**
 * El @override se utiliza para sobre escribir metodos cuando se
 * hace un extends de otra clase, asi sobre escribe el metodo del
 * padre
 */

class Persona {
  String? nombre;
  int? edad;

  Persona(String nombre, int edad) {
    this.nombre = nombre;
    this.edad = edad;
  }

  void imprimir() => print('Nombre: $nombre, Edad: $edad');
}

class Hombre extends Persona {
  String? trabajo = 'trabajo';

  Hombre(String nombre, int edad, String trabajo) : super(nombre, edad);

  //Cuando se sobre escribe un metodo debemos pone rel @override
  @override
  void imprimir() {
    //Imprime el metodo del padre
    super.imprimir();

    print('Nombre: $nombre, Edad: $edad, Trabajo: $trabajo');
  }
}

void main(List<String> args) {
  final persona = new Persona('Joss', 25);
  persona.imprimir();

  final hombre = new Hombre('Cris', 30, 'trajoasdads');
  hombre.trabajo = 'TRabajopio';
  hombre.imprimir();
}
