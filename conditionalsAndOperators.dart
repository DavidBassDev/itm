import 'dart:io';

void main() {
  /* var problema1 = new positivePower();
  String resultado1 = problema1.positivepower();
  print("el resultado del primer ejercicio es $resultado1");
*/
  //EJERCICIO 2
  var problema2 = new DoubleOrTriple();
  int resultado2 = problema2.doubleortriple();
  print("el resultado del ejercicio 2 es $resultado2");
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
      print("no es numero ");
    }
    return resultado;
  }
}

class DoubleOrTriple {
  int doubleortriple() {
    int resultado = 0;
    bool numero = false;
    print("primer numero");
    String? entrada = stdin.readLineSync();
    numero = esNumero(entrada);
    while (!numero) {
      print("primer numero");
      String? entrada = stdin.readLineSync();
      numero = esNumero(entrada);
    }
    int? numero1 = int.tryParse(entrada!);
    numero = false;
    print("segundo numero");
    String? entrada2 = stdin.readLineSync();
    numero = esNumero(entrada2);
    while (!numero) {
      print("segundo numero");
      String? entrada2 = stdin.readLineSync();
      numero = esNumero(entrada);
    }
    int? numero2 = int.tryParse(entrada2!);

    if (numero1 != null && numero2 != null) {
      if (numero1 > numero2) {
        resultado = numero1 + numero1;
      } else if (numero2 > numero1) {
        resultado = numero2 * 3;
      } else {
        resultado = numero1 + numero1;
      }
    }
    return resultado;
  }
}

bool esNumero(String? input) {
  if (input == null) {
    return false;
  }

  return int.tryParse(input) != null;
}
