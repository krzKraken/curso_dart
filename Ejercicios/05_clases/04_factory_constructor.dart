/**
 * El factory se utiliza para crear una clase que retorna 
 * otra clase despues de una condicion
 */

class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo; //Cuadrado base = altura, rectangulo base != altura

  //Factory regresa una instancia previamente creada
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }
  //Clase Cuadrado
  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  //Clase Rectangulo
  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }
}

void main(List<String> args) {
  Rectangulo rectangulo = new Rectangulo(10, 10);
  print(
      'La base es: ${rectangulo.base}, la altura es: ${rectangulo.altura}, Area: ${rectangulo.area}, Tipo:${rectangulo.tipo}');
}
