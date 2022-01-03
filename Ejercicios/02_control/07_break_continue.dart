/**
 * El CONTINUE lo que hace es saltar el bloque de codigo
 * sin ejeturarlo, es decir salta el indice e ignora el bloque
 * que continuava.
 * 
 * El BREAK lo que hace es que si se cumple la condicion,
 * el programa sale del bucle y continua con el codigo hasta
 * donde encuentra el break
*/

main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);

    if (i == 8) {
      break;
    }
  }
}
