import 'dart:io';

void main() {
  var problema1 = new positivePower();
  String resultado1 = problema1.positivepower();
  print("el resultado del primer ejercicio es $resultado1");
}

class positivePower {
  String positivepower() {
    String resultado = "0";
    print("escibe un numero");
    double? numero = double.tryParse(stdin.readLineSync()!);
    if (numero != null) {
      if (numero > 0) {
        double positive = numero * numero;
        resultado = positive.toString();
      } else if (numero < 0) {
        resultado = "numero negativo";
      } else {
        resultado = "0";
      }
    } else {
      print("alguno de los dos numeros no son validos");
    }
    return resultado;
  }
}
