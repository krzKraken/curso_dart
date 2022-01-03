/**
 * Una clase abstracta es una clase que no se puede 
 * crear una instancia y solo sirven como un cascaron
 * para crear otras clases o heredar metodos y atributos
 */

abstract class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }

  // Metodo sin inicializar
  bool revisarMotor();

  // Metodo inicializado
  String kilometraje() {
    return 'Kilometraje ok';
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

  // Sobreescribe el metodo del padre
  @override
  bool revisarMotor() {
    print('Motor ok!');
    return true;
  }
}

void main(List<String> args) {
  //NO ES PERMITIDO CREAR UNA CLASE VEHICULO
  // final mazda = new Vehiculo();

  Carro ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}
