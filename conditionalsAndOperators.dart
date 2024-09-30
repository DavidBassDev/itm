import 'dart:async';
import 'dart:io';
import 'dart:math';

void main() {
  /* var problema1 = new positivePower();
  String resultado1 = problema1.positivepower();
  print("el resultado del primer ejercicio es $resultado1");

  //EJERCICIO 2
  var problema2 = new DoubleOrTriple();
  int resultado2 = problema2.doubleortriple();
  print("el resultado del ejercicio 2 es $resultado2");


//EJERCICIO 3
  var problema3 = new rootOrSquare();
  double resultado3 = problema3.rootorsquare();
  print("el resultado del ejercicio 3 es $resultado3");
  

  //EJERCICIO 4
  var problema4 = new circleOrPerimeter();
  double resultado4 = problema4.circleorperimeter();
  print("el resultado del ejercicio 4 es $resultado4");
  

  //EJERCICIO 5
  var problema5 = new midWeekDay();
  String resultado5 = problema5.midweekday();
  print("el resultado del ejercicio 5 es $resultado5");
  */

  //EJERCICIO 6
  var problema6 = new taxCalculator();
  String resultado6 = problema6.taxcalculator();
  print("el resultado del ejercicio 6 es $resultado6");
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

class rootOrSquare {
  double rootorsquare() {
    bool esNum = false;
    double? resultado = 0;
    print("ingresa un numero");
    String? entrada = stdin.readLineSync();
    esNum = esNumero(entrada);
    while (!esNum) {
      print("ingresa un numero");
      String? entrada = stdin.readLineSync();
      esNum = esNumero(entrada);
    }
    if (entrada != null) {
      resultado = double.tryParse(entrada);
      if (resultado! > 0) {
        resultado = sqrt(resultado);
      } else if (resultado == 0) {
        resultado = 0.0;
      } else {
        resultado = resultado * resultado;
      }
    }
    return resultado;
  }
}

class circleOrPerimeter {
  double circleorperimeter() {
    double perimetro = 0.0;
    print("ingresa el radio del circulo");

    String? entrada = stdin.readLineSync();
    bool esNum = esNumero(entrada);
    while (!esNum) {
      print("ingresa el radio del circulo");
      String? entrada = stdin.readLineSync();
      bool esNum = esNumero(entrada);
    }

    double? radio = double.tryParse(entrada!);
    if (radio != null) {
      perimetro = 2 * pi * radio;
    }

    return perimetro;
  }
}

class midWeekDay {
  String midweekday() {
    String resultado = "";
    int? numero = 0;
    print("ingresa un dia de la semana");
    String? entrada = stdin.readLineSync();
    bool esNum = esNumero(entrada);
    while (!esNum) {
      print("ingresa un numero valido");
      entrada = stdin.readLineSync();
      esNum = esNumero(entrada);
    }
    if (entrada != null) {
      numero = int.tryParse(entrada);
    }

    switch (numero) {
      case 1:
        resultado = "Lunes";
        break;
      case 2:
        resultado = "Martes";
        break;
      case 3:
        resultado = "Miercoles";
        break;
      case 4:
        resultado = "Jueves";
        break;
      case 5:
        resultado = "Viernes";
        break;
      default:
        resultado = "Numero fuera del rango laboral";
    }
    return resultado;
  }
}

class taxCalculator {
  String taxcalculator() {
    int? salario = 0;
    double? calculo;
    String resultado = "";
    print("ingresa tu salaio");
    String entrada = stdin.readLineSync()!;
    bool esNum = esNumero(entrada);
    while (!esNum) {
      print("no es numero, ingresa tu salario");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    if (entrada != null) {
      salario = int.tryParse(entrada);
    }
    if (salario! > 12000) {
      int excedente = salario - 12000;
      calculo = excedente * 0.15;
      resultado = calculo.toString();
    } else if (salario <= 12000) {
      resultado = "no debe impuestos";
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
