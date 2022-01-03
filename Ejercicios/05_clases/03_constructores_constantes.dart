class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}

void main(List<String> args) {
  final sanFrancisco = new Location(10.1212, 36.0000);
  final sanFrancisco2 = new Location(10.1212, 36.1254);
  final sanFrancisco3 = new Location(10.1212, 36.1254);

  print(sanFrancisco == sanFrancisco2);
  print(sanFrancisco3 == sanFrancisco2);

  const sanFrancisco4 = const Location(10.1221, 13.000);
  const sanFrancisco5 = const Location(10.1221, 13.1254);
  const sanFrancisco6 = const Location(10.1221, 13.1254);

  print(sanFrancisco4 == sanFrancisco5); //
  print(sanFrancisco5 == sanFrancisco6); //-> Apunta al mismo lugar de memoria
}
