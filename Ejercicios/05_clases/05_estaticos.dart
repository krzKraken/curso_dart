/**
 * En las clases estaticas se puede escribir o leer desde 
 * un main sin necesidad de crear una instancia se ocupa 
 * habitualmente para lectura mas no escritura
 * PUEDO ACCEDER A LAS PROPIEDADES Y METODOS SIN INICIALIZAR LA CLASE
 */

//Clase herramienta normal con su listado
class Herramientas {
  List<String> listado = ['Martillo', 'Llave inglesa', 'Desarmador'];
}

//Clase herramientas2 con su listado, ocupa el mismo espacio en memoria en la aplicacion
class Herramientas2 {
  static const List<String> listado = ['Martillo', 'Tenazas', 'Desarmador'];
}

void main(List<String> args) {
  //Normal se crea una instancia
  final herr = new Herramientas();
  herr.listado.forEach((element) {
    print(element);
  });

  //con static no requerimos crear una instancia porque trabaja sobre ella
  //PEro se puede modificar desde cualquier lado y lo habitual es usarla
  //Solo para lectura y no escritura
  Herramientas2.listado.forEach((element) {
    print(element);
  });
}
