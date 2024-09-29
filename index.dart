import 'dart:io';

void main() {
  print('hola, escribe tu nombre');
  String? entrada = stdin.readLineSync();
  print('hola!  $entrada');
  print('hola, escribe fecha nacimiento en dd/mm/yyyy');
  String? entrada2 = stdin.readLineSync();
  DateTime? fechaTeclado = DateTime.tryParse(entrada2!);
}
