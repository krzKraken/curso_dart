/**
 * Una clase con super constructor es una clase que tiene un constructor heredado
 * y el contructor hijo debe tener definido en su constructor los atributos de 
 * la clase padre
 */

class Persona {
  String? nombre;
  int? edad;

  Persona({this.nombre, this.edad});

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List? ordenes = [];
  // Super constructor
  Cliente(int edadActual, String nombreActual)
      : super(nombre: nombreActual, edad: edadActual);

  void imprimirCliente() => print(
      'Nombre: $nombre, Edad: $edad, Lista: $ordenes, Direccion: $direccion');
}

void main(List<String> args) {
  final persona = new Persona(nombre: 'Cristhian', edad: 30);
  persona.imprimirNombre();

  final cliente = new Cliente(25, 'Joss');
  cliente.imprimirNombre();
  cliente.ordenes = ['Papel', 'Clips'];
  cliente.direccion = 'Quito';
  cliente.imprimirCliente();
}
