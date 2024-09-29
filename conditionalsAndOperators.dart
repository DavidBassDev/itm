import 'dart:io';

void main() {
  print("escibe un numero");
  double? numero = double.tryParse(stdin.readLineSync()!);
  print("escibe segundo numero");
  double? numero2 = double.tryParse(stdin.readLineSync()!);
  if (numero != null && numero2 != null) {
    print("suma es ${numero + numero2}");
  } else {
    print("alguno de los dos numeros no son validos");
  }
}
