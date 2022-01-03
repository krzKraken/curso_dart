class Persona {
  // Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Soy una propiedad privada';

  // Gets y Sets
  String get bio {
    return _bio.toUpperCase();
  }

  ///Forma abreviada getter
  /// String get bio => _bio.toUpperCase();

  set bio(String texto) {
    _bio = texto;
  }
  //Forma Abreviada setter
  // set bio(String texto) => _bio = texto;

  // Contructores
  // Persona(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  //   // print('Constructor');
  // }

  //Constructor corto {} => Opcional con nombre () => Obligatorio posicional
  Persona({this.edad, required this.nombre});

  //Sobre carga o constructor con nombre
  Persona.persona30(this.nombre) {
    edad = 40;
    bio = 'Esta es una bio por defecto';
  }
  Persona.persona40(String nombre, int edad, String bio) {
    this.nombre = nombre;
    this.edad = edad;
    this.bio = bio;
  }

  // Metodos
  @override
  String toString() {
    return '$nombre $edad $_bio';
  }
}
