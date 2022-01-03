void main() {
  // Comentario de una linea

  /**
   * Comentarios multi linea  
   * Aqui se puede definir documentacion del documento [variables]
   * 
   */

  /// Esta es otra forma de momentar con [variables]
  /// Para ser leido desde el DartDoc
  print(Saludar('Cris', 'Como estas'));
}

String Saludar(String nombre, String mensaje) {
  final concat = "hola $nombre $mensaje";
  return concat;
}
