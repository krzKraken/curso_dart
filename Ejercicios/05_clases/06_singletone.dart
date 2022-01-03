/**
 * El patron Silgenton nos sirve para inicializar una 
 * clase y mantenrla en toda la aplicacion sin repetirla
 * y toda modificacion que se haga la mantendra en todo
 * momento, de igual forma nos asegura que esta clase 
 * solo se inicializara una sola vez
 */

import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com';

  print(spotifyService1 == spotifyService2);
  print(spotifyService1.url);
  print(spotifyService2.url);
}
