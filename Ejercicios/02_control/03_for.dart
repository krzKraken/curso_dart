import 'dart:io';

main() {
  stdout.writeln('Inserte un valor: ');

  int val = int.parse(stdin.readLineSync()!);
  stdout.writeln('El valor es $val');
  for (int i = 1; i <= 10; i++) {
    stdout.writeln('Index: ${i * val}');
  }
}
