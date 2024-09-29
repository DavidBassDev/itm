import 'dart:io';

void main() {
  var problema1 = new positivePower();
  double resultado1 = problema1.positivepower();
  print("el resultado del primer ejercicio es $resultado1");
}

class positivePower {
  double positivepower() {
    double resultado = 0.0;
    print("escibe un numero");
    double? numero = double.tryParse(stdin.readLineSync()!);
    print("escibe segundo numero");
    double? numero2 = double.tryParse(stdin.readLineSync()!);
    if (numero != null && numero2 != null) {
      resultado = numero + numero2;
    } else {
      print("alguno de los dos numeros no son validos");
    }
    return resultado;
  }
}
