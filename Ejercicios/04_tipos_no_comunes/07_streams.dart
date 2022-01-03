import 'dart:async';

void main() {
  // Creamos el stream
  final streamController = StreamController();

  // Dedinimos el que hara cuando el stream escuche un dato
  streamController.stream.listen((data) {
    print('Despegando!: $data');
  });

  // Aqui enviamos la informacion por el Stream
  streamController.sink.add('Apollo 11');

  print('Fin del Main');
}
