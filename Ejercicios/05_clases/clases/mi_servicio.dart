/** ## SERVICIO SINGLETON
 * Cuando requerimos que una instancia se ocupe en 
 * toda la aplicacion
 */

class MiServicio {
  // Propiedad interna privada
  static final MiServicio _singleton = new MiServicio._internal();

  //Constructor factory, si existe una instancia la utiliza, caso contrario crea una nueva instancia
  factory MiServicio() {
    return _singleton;
  }
  //Constructor privado '_internal o _'
  MiServicio._internal();

  String url = 'https://abc';
  String key = 'ABC123';
}
