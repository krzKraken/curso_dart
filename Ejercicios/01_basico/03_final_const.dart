main() {
  var a = 10;
  final int b =
      10; // -> es las ligera y no se va a cambiar el valor de la variable
  const int c = 10; //-> Cuando nunca se va a cambiar el valor de la variable
  // a = 20;
  // b = 20;
  // c = 20;

  late final int d; //-> se inicializa despues
  d = 10;
  // d = 100;   // -> no permite modificar
  print(d);

  final personasFinal = ['juan', 'Pedro', 'Luis'];

  final List<String> personasFinalOtraDef = ['juan', 'Pedro', 'Luis']; //->valid

  personasFinal.add('Joss');

  print(personasFinal);

  const List<String> personasConst = ['juan', 'Pedro', 'Luis'];
  // personasConst.add('Cris');
  // print(personasConst);  //=> Error const es inmodificable
}
