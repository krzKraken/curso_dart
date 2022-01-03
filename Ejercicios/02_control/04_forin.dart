import 'dart:io';

main() {
  List<String> personas = ['Cristhian', 'Joss', 'Carlos'];

  //Imprimir un listado
  for (int i = 0; i < personas.length; i++) {
    print(personas[i]);
  }

//Imprimiendo listado con For in
  for (String nombre in personas) {
    print(nombre);
  }
}
