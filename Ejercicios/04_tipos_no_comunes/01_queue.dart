import 'dart:collection';

/*
Cuando se tiene una secuencia de valores que se deben procesar
uno despues de otro
*/

main() {
  Queue<int> cola = new Queue();
  cola.addAll([10, 20, 30, 40, 50]);
  print(cola);

  Iterator i = cola.iterator;
  while (i.moveNext()) {
    print(i.current);
  }
}
