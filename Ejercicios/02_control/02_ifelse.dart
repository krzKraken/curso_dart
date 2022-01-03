import 'dart:io';

main() {
  stdout.writeln('Cual es tu edad? ');
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 21) {
    stdout.writeln('Ciudadano');
  } else if (edad >= 18 && edad < 21) {
    stdout.writeln('Es mayor de edad');
  } else {
    stdout.writeln('Es menor de edad');
  }
}
