/***
 * Se puede nombrar a los ciclos While, doWhile, for, cualquier
 * ciclo con un nombre y dos puntos
 * Ejemplo:
 * 
 * nombreFor:
 * for(.......
 * )
 * 
 * */

main() {
  outerLoop:
  for (var i = 0; i < 5; i++) {
    print('Valor de i: $i');
    innerLoop:
    for (var j = 0; j < 5; j++) {
      print('Valor de j: $j');

      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
