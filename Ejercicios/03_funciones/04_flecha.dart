/**
 * Funcion de flecha
 */

void main() {
  int a = 10;
  int b = 2;

  int resultado = sumar(a, b);
  print(resultado);
  print(sumarFlecha(a, b));

  List<int> listado = [1, 2, 3, 4, 5, 6, 7, 9, 19, 19, 1];

  // Iterable sin flecha
  var nuevoListado = listado.where((numero) {
    return numero > 4;
  });
  print(nuevoListado);

  // Iterable con flecha
  var nuevaListado2 = listado.where((n) => n > 5);
  print(nuevaListado2);
}

int sumar(int x, int y) {
  return x + y;
}

sumarFlecha(int x, int y) => x + y;
