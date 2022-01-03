void main() {
  // int volumen = 2; //0 = Volumen bajo, 1= volumen medio, 2= volumen alto
  AudioVolumen volumen = AudioVolumen.alto;

  switch (volumen) {
    case AudioVolumen.bajo:
      print('Volumen bajo');
      break;
    case AudioVolumen.medio:
      print('Volumen medio');
      break;
    case AudioVolumen.alto:
      print('Volumen alto');
      break;
  }
}

// Es una funcion o clase que nos limita las opciones para
// un programa
enum AudioVolumen { bajo, medio, alto }
