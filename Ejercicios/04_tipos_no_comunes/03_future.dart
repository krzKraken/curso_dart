/**
 *
 * 
 */

main() {
  // Resuelve cualquier dato
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues');
    return 'Retorno del Future';
  });

  // Se consume el Future asi, cuando resuelve.
  timeout.then((texto) => print(texto));
  timeout.then(print);

  print('Fin del main');
}
