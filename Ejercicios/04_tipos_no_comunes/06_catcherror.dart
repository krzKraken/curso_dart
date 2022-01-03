main() {
  // Resuelve cualquier dato
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    //Manejo de errores no controlados Estamos simulando una condicion de un error
    if (1 == 1) {
      // el throw es el error que nosotros enviamos en caso de algun problema
      throw 'Este es un error no controlado';
    }

    return 'Retorno del Future';
  });

  // La funcion resuelve y si existe un error lo estamos manejando desde el catchError
  timeout.then(print).catchError((err) => print(err));

  print('Fin del main');
}
