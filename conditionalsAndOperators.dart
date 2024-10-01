import 'dart:async';
import 'dart:io';
import 'dart:math';

void main() {
  var problema1 = new positivePower();
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

  //EJERCICIO 6
  var problema6 = new taxCalculator();
  String resultado6 = problema6.taxcalculator();
  print("el resultado del ejercicio 6 es $resultado6");

  //EJERCICIO 7
  var problema7 = new remainderFinder();
  int resultado7 = problema7.remainderfinder();
  print("el resultado del ejercicio 7 es $resultado7");

  //EJERCICIO 8
  var problema8 = new sumOfEvents();
  int resultado8 = problema8.sumofevents();
  print("el resultado del ejercicio 8 es $resultado8");

  //EJERCICIO 10
  var problema10 = new stringLength();
  int resultado10 = problema10.stringlength();
  print("el resultado del ejercicio 10 es $resultado10");

  //EJERCICIO 11
  var problema11 = new averageOfFour();
  double resultado11 = problema11.averageoffour();
  print("el resultado del ejercicio 11 es $resultado11");

  //EJERCICIO 12
  var problema12 = new smallestOfFive();
  int resultado12 = problema12.smallesoffive();
  print("el resultado del ejercicio 12 es $resultado12");

  //EJERCICIO 13
  var problema13 = new vowelCounter();
  int resultado13 = problema13.vowelcounter();
  print("el resultado del ejercicio 13 es $resultado13");

  //EJERCICIO 14
  var problema14 = new factorialFinder();
  int resultado14 = problema14.factorialfinder();
  print("el resultado del ejercicio 14 es $resultado14");

  //EJERCICIO 15
  var problema15 = new inRangeValidator();
  String resultado15 = problema15.inrangevalidator();
  print("el resultado del ejercicio 15 es $resultado15");
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

class remainderFinder {
  int remainderfinder() {
    String? entrada;
    int? numero1 = 0;
    int? numero2 = 0;
    print("ingresa el primer numero");
    entrada = stdin.readLineSync();
    bool esNum = esNumero(entrada);
    while (!esNum) {
      print("escribe un numero valido");
      entrada = stdin.readLineSync();
    }
    if (entrada != null) {
      numero1 = int.tryParse(entrada);
    }
    print("escribe el segundo numero");
    entrada = stdin.readLineSync();
    esNum = esNumero(entrada);
    while (!esNum) {
      print("escribe un numero valido");
      entrada = stdin.readLineSync();
    }
    if (entrada != null) {
      numero2 = int.tryParse(entrada);
    }
    int finder = numero1! % numero2!;
    return finder;
  }
}

bool esNumero(String? input) {
  if (input == null) {
    return false;
  }

  return int.tryParse(input) != null;
}

class sumOfEvents {
  double? residuo;
  int suma = 0;
  int sumofevents() {
    for (int i = 1; i < 51; i++) {
      residuo = i % 2;
      if (residuo == 0) {
        suma = suma + i;
      }
    }
    return suma;
  }
}

class stringLength {
  int stringlength() {
    print("Ingresa una palabra");

    String entrada = stdin.readLineSync()!;
    return entrada.length;
  }
}

class averageOfFour {
  double averageoffour() {
    bool esNum = false;
    double? numero1;
    double? numero2;
    double? numero3;
    double? numero4;
    print("escribe el numero 1");
    String entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero1 = double.tryParse(entrada);
    esNum = false;
    print("escribe el numero 2");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero2 = double.tryParse(entrada);
    esNum = false;
    print("escribe el numero 3");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero3 = double.tryParse(entrada);
    esNum = false;
    print("escribe el numero 4");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero4 = double.tryParse(entrada);
    double promedio = (numero1! + numero2! + numero3! + numero4!) / 4;
    return promedio;
  }
}

class smallestOfFive {
  int smallesoffive() {
    bool esNum = false;
    int? numero1;
    int? numero2;
    int? numero3;
    int? numero4;
    int? numero5;
    int valorMenor = 9999999999;
    print("escribe el numero 1");
    String entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero1 = int.tryParse(entrada);
    if (numero1! < valorMenor) {
      valorMenor = numero1;
    }
    esNum = false;
    print("escribe el numero 2");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero2 = int.tryParse(entrada);
    if (numero2! < valorMenor) {
      valorMenor = numero2;
    }
    esNum = false;
    print("escribe el numero 3");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero3 = int.tryParse(entrada);
    if (numero3! < valorMenor) {
      valorMenor = numero3;
    }
    esNum = false;
    print("escribe el numero 4");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero4 = int.tryParse(entrada);
    if (numero4! < valorMenor) {
      valorMenor = numero4;
    }
    esNum = false;
    print("escribe el numero 5");
    entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("no es un numero, ingresa uno valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero5 = int.tryParse(entrada);
    if (numero5! < valorMenor) {
      valorMenor = numero5;
    }
    return valorMenor;
  }
}

class vowelCounter {
  int vowelcounter() {
    int contadorVocales = 0;
    print("Escribe una palabra");
    String entrada = stdin.readLineSync()!.toLowerCase();
    for (int i = 0; i < entrada.length; i++) {
      switch (entrada[i]) {
        case 'a':
          contadorVocales++;
          break;
        case 'e':
          contadorVocales++;
          break;
        case 'i':
          contadorVocales++;
          break;

        case 'o':
          contadorVocales++;
          break;
        case 'u':
          contadorVocales++;
          break;
      }
    }
    return contadorVocales;
  }
}

class factorialFinder {
  int factorialfinder() {
    bool esNum = false;
    int resultado = 1;
    int? numero = 0;
    print("ingresa un numero");
    String entrada = stdin.readLineSync()!;
    esNum = esNumero(entrada);
    while (!esNum) {
      print("debes ingresar un numero valido");
      entrada = stdin.readLineSync()!;
      esNum = esNumero(entrada);
    }
    numero = int.tryParse(entrada);

    for (int i = 1; i < numero! + 1; i++) {
      resultado = resultado * i;
    }
    return resultado;
  }
}

class inRangeValidator {
  String inrangevalidator() {
    bool esNum = false;
    String? resultado;
    print("Escribe un numero");
    String? entrada = stdin.readLineSync();
    esNum = esNumero(entrada);
    while (!esNum) {
      print("escribe un numero valido");
      entrada = stdin.readLineSync();
      esNum = esNumero(entrada);
    }
    int? numero = int.tryParse(entrada!);
    if (numero! >= 10 && numero <= 20) {
      resultado = "esta en el rango";
    } else {
      resultado = "no esta en el rango";
    }
    return resultado;
  }
}
