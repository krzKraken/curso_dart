/**
 * Extends extiende la clase padre con sus propiedades y
 * metodos heredando a la clase hija
 */

class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }
}

class Carro extends Vehiculo {
  int _llantas = 4;

  int get llantas {
    return _llantas;
  }

  set llantas(int numeroLlantas) {
    _llantas = numeroLlantas;
  }
}

void main(List<String> args) {
  Carro ford = new Carro();
  ford.encender();
  ford.apagar();
  print(ford._llantas);
  ford._llantas = 5;
  print(ford._llantas);
  ford.llantas = 10;
  print(ford.llantas);
}
