/**
 * Otros operadores 
 * 
 * 
 */

main() {
  //Operadores de asignacion [=]
  int? a;

  int? b;
  b ??= 200; // Si el valor de B es null ASIGNA el valor de 200
  int? c;

  print(b);

  //Operadores condicionales
  int d = 28;
  String resp = d > 25 ? 'D es mayor a 25' : 'D es menor a 25';
  print(resp);

  //Operadores si es null
  // e es igual a C si no es null, sino es a si no es null
  int e = c ?? a ?? 69;
  print(e);

  //Operadores Relacionales
  // Siempre retorna un valor boleano
  /**
   *  > mayor que  
   *  < menor que
   *  >= mayor igual
   *  <= menor igual
   *  == Es igual
   *  != Son diferente
   */
  String persona1 = "Cris";
  String persona2 = "Joss";
  print(persona1 == persona2);
  print(persona1 != persona2);

  //Operador de tipo
  int i = 10;
  String j = '10';
  print(i is int);
  print(j is int);
  print(j is! int);
  print(10.0 % 3);
  String c1 = false ? 'C es nulo' : 'C no es la respuesta correcta';
  print(c1);
}
