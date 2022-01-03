import 'dart:math';

/***
 * El ciclo switch 
 * 
 * */

main() {
  int rnd = Random().nextInt(8);
  print(rnd);

  switch (rnd) {
    case 0:
      print('Lunes');
      break;

    case 1:
      print('Martes');
      break;

    case 2:
      print('Miercoles');
      break;

    case 3:
      print('Jueves');
      break;

    case 4:
      print('Viernes');
      break;

    case 5:
      print('Sabado');
      break;

    case 6:
      print('Domingo');
      break;

    //Cuando ninguna satisfaga la condicion
    default:
      print('No es un dia de la semana');
  }
}
