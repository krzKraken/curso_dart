main() {
// # Numeros
  int a = 10;
  double b = 5.5;
  double c;
  c = a + b;
  // print(c);

  // # Cadena de caracteres
  String nombre1 = "Tony";
  String? nombre2;
  String nombre3 = "O'Conor";
  String apellido = 'Stark';
  String nombreCompleto = '$nombre1 $apellido';
  String textoMultilineas = '''
  Todo esto es
  un texto de 
  multilineas
  $nombreCompleto
  ''';

  // print(nombre3);
  // print(textoMultilineas);

  // # Boleanos
  bool? isActive = true;
  bool isNotActive = !isActive;
  // print(isActive);
  // print(isNotActive);

  // # Listas -> se pueden repetir los elementos
  List<String> villanos = ['lex', 'Skull', 'Doom'];
  villanos[0] = 'Superman';
  // print(villanos);

  List<String> superheroes = ['lex', 'Skull', 'Doom'];
  superheroes.add('Batman');
  superheroes.add('Batman');
  superheroes.add('Batman');
  superheroes.add('Batman');
  superheroes.add('Batman');
  // print(superheroes);

  // Para eliminar los elementos duplicados
  Set<String> aux = {};
  aux = superheroes.toSet();

  // print('Aux: ${aux.toList()}');

// # Sets -> similar a las listas pero no se repiten los elementos
  Set<String> villanos2 = {'lex', 'Skull', 'Doom'};
  villanos2.add('Cris');
  villanos2.add('Cris');
  villanos2.add('Cris');
  villanos2.add('Cris');
  // print(villanos2);

  // # Mapas

  Map<String, dynamic> ironMan = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'nivel': 123
  };
  print(ironMan);
  print(ironMan['nombre']);
  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre': 'Steve', 'poder': 'Resiste Drogas', 'nivel': 5000});
  print(capitan['nombre']);
}
