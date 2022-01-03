String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  //Romper referencia del objeto
  mapa = {...mapa};
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  mapa['apellido'] = mapa['apellido']!.toUpperCase();
  return mapa;
}

void main(List<String> args) {
  String nombre = 'Cristhian';
  String nombre2;

  Map<String, String> persona1 = {'nombre': 'Joss', 'apellido': 'Sandoval'};
  // Sin romper la referencia modifica la variable en el espacio de memoria
  Map<String, String> persona2 = capitalizarMapa(persona1);
  print(persona1);
  print(persona2);

  nombre2 = capitalizar(nombre);
  print(nombre);
  print(nombre2);
}
