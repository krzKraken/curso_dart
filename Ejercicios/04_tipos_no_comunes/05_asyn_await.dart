import 'dart:io';

void main() async {
  String path = 'Ejercicios/04_tipos_no_comunes/assets/personas.txt';

  leerArchivo(path).then((value) => (print(value)));
  leerArchivo(path).then(print);

  leerarchivo2(path).then(print);

  ///Para esperar que resuelva antes de continuar el codigo
  ///Necesitamos poner un [await]
  String texto = await leerArchivo(path);
  print('texto con await: $texto');
  print('Fin del main');
}

Future<String> leerArchivo(String path) {
  File file = new File(path);
  return file.readAsString();
}

// ASYNC Obliga a resolver un future
Future leerarchivo2(String path) async {
  return 'Esto es un Future';
}
