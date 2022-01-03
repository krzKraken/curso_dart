class Cuadrado {
  final int lado;
  final int area;

// ## no permite inicializar de esta foram
  // Cuadrado(int lado, int area) {
  //   this.lado = lado;
  //   this.area = area;
  // }

// ## PErmitido inicializar de esta forma
// Cuadrado(this.lado , this.area){
// }

// Otra forma
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

void main(List<String> args) {
  final cuadrado = new Cuadrado(10);
  print(cuadrado.area);
}
