﻿//inicio del programa

//ejercicio 1
//Solicita al usuario un número y eleva este número al cuadrado solo si es positivo

using System.ComponentModel;
/*
Console.WriteLine("EJERCICIO 1 POSITIVE POWER");
var positivepower = new positivePower();
String resultado = positivepower.cuadradoPositivo();
Console.WriteLine("resultado del ejercicio 1 es "+resultado);





//ejercicio 2
//Solicita al usuario un número y eleva este número al cuadrado solo si es positivo.


Console.WriteLine("EJERCICIO 2 DOUBLE OR TRIPLE");
var dobleOtriple = new DoubleOrTriple ();
int impresion = dobleOtriple.DoubleTriple();
Console.WriteLine("El resultado del ejercicio 2 es "+impresion);





//ejercicio 3
Console.WriteLine("EJERCICIO 3 ROOT OR SQUARE");
var raizCuadrado = new RootOrSquare();
double resultado3 = raizCuadrado.rootorsquare();
Console.WriteLine("El resultado del ejercicio 3 es "+resultado3);


*/


//ejercicio 4
Console.WriteLine("EJERCICIO 4 CIRCLE PERIMETER");
var perimetro = new circleOrPerimeter();
Double resultado4=  perimetro.circleorperimeter();
Console.WriteLine("el resultado del ejercicio 4 es "+resultado4);











//CLASES Y METODOS DE LOS EJERCICIOS


//ejercicio 1
public class positivePower {

public String cuadradoPositivo() {
    String resultado="";
bool esNumero = false;
while(esNumero==false){
Console.WriteLine("ESCRIBE EL NUMERO");
String lectura= Console.ReadLine();
int numero;
 esNumero = int.TryParse(lectura, out numero);

if(esNumero) {

if(numero>0){
int funcion= numero*numero;
resultado= funcion.ToString();

}
 else if (numero<0) {

    resultado="numero negativo";
} else {

    resultado="0";
}

}//cierre validacion booleano
 else {
    Console.WriteLine("Valor ingresado no es numero");
}

}

return resultado;
} 

}

//ejercicio 2
public class DoubleOrTriple {

 
    public int DoubleTriple() {
     int numero1;
     int numero2;
       bool num1=false;
       bool num2=false;
        int resultado=0;
      while(num1==false || num2==false) {  
      Console.WriteLine("Ingresa numero 1");
      var valor1 = Console.ReadLine();
      num1 = int.TryParse(valor1, out numero1);
      Console.WriteLine("Ingresa numero 2");
      var valor2 = Console.ReadLine();
      num2 = int.TryParse(valor2, out numero2);
       

        if(num1 && num2){
      if(numero1 > numero2){//aca comando si el num1 es mayor al num2
         resultado= numero1*2;

      } else if (numero2 > numero1) { //comando numero 2 es mayor a numero 1

        resultado=numero2*3;
      }   else {//resultado es igual
     resultado= numero1*2;

      }
      
      } else {
        Console.WriteLine("uno o dos datos no son numeros");
      } 
       
    } 
     return resultado;
    }  
}
 

 //ejercicio 3


public class RootOrSquare
{
    // Método que devuelve un valor Double
    public double rootorsquare()
    {
        double numero = 0.0; 

        bool esNum = false;
        while (!esNum)
        {
            Console.WriteLine("Escribe un numero:");
            var ingreso = Console.ReadLine();
            
            esNum = double.TryParse(ingreso, out numero);

            if (!esNum)
            {
                Console.WriteLine("No es un numero.");
            }
            else
            {
                if (numero > 0)
                {
                    //raiz cuadrada
                    numero = Math.Sqrt(numero);
                }
                else if (numero < 0)
                {
                    // Devuelve el cuadrado
                    numero = numero * numero;
                }
                
            }
        }

        return numero;
    }
}


public class circleOrPerimeter{

public double circleorperimeter(){
bool esNum=false;
double radio =0.0;
while(!esNum){
Console.WriteLine("Ingresa el radio del circulo");
var ingreso = Console.ReadLine();
esNum= double.TryParse(ingreso, out radio);
}//cierre while
double pi= Math.PI;

double perimetro= 2 * pi * radio;
return perimetro;
}


}
