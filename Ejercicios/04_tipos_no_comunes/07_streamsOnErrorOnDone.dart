import 'dart:async';

void main() {
  // Creamos el stream/
  // => Esta es la forma incompleta sin especificar el tipo del dato que fluye a travez del stream
  // final streamController = StreamController();
  // => Esta es la forma correcta espcificando el tipo de dato que fluye en el stream
  final streamController = StreamController<
      String>.broadcast(); //=> broadcast permite realizar multiples listeners
  // Dedinimos el que hara cuando el stream escuche un dato
  streamController.stream.listen((data) => print('Despegando!: $data'),
      // Cuando se cierra el Stream Se lanza la instruccion onDone
      onDone: () => print('Stream Cerrado y terminado'),
      // Cuando existe un error se lanza el onError
      onError: (err) => print(err),
      // Si hay un error se cancela el resto del codigo si es true, caso contrario el codigo sigue
      cancelOnError: false);

  // Si creamos otro Stream en modo sin broadcast es de solo un listener
  streamController.stream.listen((event) => print(event),
      onDone: () => print('Stream Terminado y cerrado'),
      onError: (err) => print(err),
      cancelOnError: false);

  // Aqui enviamos la informacion por el Stream
  streamController.sink.add('Apollo 11');

  // Otra insercion de dato al stream
  streamController.sink.add('Apollo 12');

  // Un error en el Stream
  streamController.sink.addError('Error! Huston, Tenemos un problema');

  // Otra insercion de datos al stream
  streamController.sink.add('Apollo 13');

  streamController.sink.add('Apollo 14');
  streamController.sink.add('Lo que sea');
  // Para cerrar un Stream se coloca el Stream.close();
  streamController.sink.close();

  print('Fin del Main');
}
