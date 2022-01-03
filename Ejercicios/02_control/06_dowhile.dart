import 'dart:io';

/**
 * Do While se ejecuta al menos una vez mientras el
 * while solo se ejecuta si la condicion es verdadera 
 */
main() {
  String continuar = 'y';
  int contador = 0;
  do {
    contador++;
    stdout.writeln('Contador: $contador');

    stdout.writeln('Desea continuar? (y/n)');

    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}
