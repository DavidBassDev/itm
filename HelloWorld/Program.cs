//inicio del programa

//ejercicio 1
//Solicita al usuario un número y eleva este número al cuadrado solo si es positivo

using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Xml.Schema;
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





//ejercicio 4
Console.WriteLine("EJERCICIO 4 CIRCLE PERIMETER");
var perimetro = new circleOrPerimeter();
Double resultado4=  perimetro.circleorperimeter();
Console.WriteLine("el resultado del ejercicio 4 es "+resultado4);







//ejercicio 5
Console.WriteLine("EJERCICIO 5 MIDWEEK DAY");
var diaSemana = new midWeekDay();
var resultado5= diaSemana.midweekday();
Console.WriteLine("el resultado del ejercicio 5 es "+resultado5);




//ejercicio 6
Console.WriteLine("EJERCICIO 6 TAX CALCULATOR");
var impuesto= new taxCalculator();
string resultado6= impuesto.taxcalculator();
Console.WriteLine("el resultado del ejercicio 6 es "+resultado6);




//ejercicio 7, con try catch
Console.WriteLine("EJERCICIO 7 REMAINDER FINDER");
var residuo = new remainderFinder ();
int resultado7 = residuo.remainderfinder();
Console.WriteLine("el resultado del ejercicio 7 es "+resultado7);



//ejercicio 8
Console.WriteLine("EJERCICIO 8 SUM OF EVENS");
var suma = new sumOfEvens();
int resultado8 = suma.sumofevens();
Console.WriteLine("el resultado del ejercicio 8 es "+resultado8);






//ejercicio 10
Console.WriteLine("EJERCICIO 10 String Length ");
var tamanio= new StringLength();
int resultado9= tamanio.stringlength();
Console.WriteLine("El resultado del ejercicio 10 es "+resultado9);
*/

//ejercicio 11
Console.WriteLine("EJERCICIO 11 Average of Four");
var promedio= new AverageOfFour();
double resultado11= promedio.Averageoffour();
Console.WriteLine("el resultado del ejercicio 11 es "+resultado11);




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


public class midWeekDay{

public string midweekday(){
Boolean esNum=false;
int numero=0;
string resultado="";
while(!esNum){
Console.WriteLine("Ingresa el dia de la semana");
var entrada = Console.ReadLine();
esNum= int.TryParse(entrada, out numero);
}

switch(numero){
case 1:
resultado="Lunes";
break;
case 2:
resultado="Martes";
break;
case 3:
resultado="Miercoles";
break;
case 4:
resultado="Jueves";
break;
case 5:
resultado="Viernes";
break;
default:
resultado="Numero fuera del rango laboral";
break;
}
return resultado;
}

}

public class taxCalculator{

public string taxcalculator(){
string resultado="";
Boolean esNum=false;
int numero=0;
while(!esNum){
Console.WriteLine("Ingresa tu salario anual");
var entrada = Console.ReadLine();
esNum= int.TryParse(entrada, out numero);
}

if(numero>12000) {//paga impuestos
int resta=numero-12000;
double operacion=resta*0.15;
resultado= operacion.ToString();
}
else{
resultado="No debe impuestos";

} return resultado;
}


}

public class remainderFinder{

public int remainderfinder(){
int residuo=0;
int dividiendo=0;
int divisor=0;    
Boolean esNum=false;

while(!esNum) {
Console.WriteLine("escribe numero 1 (dividiendo)");
var entrada = Console.ReadLine();
esNum= int.TryParse(entrada, out dividiendo);
}
esNum=false;

while(!esNum) {
Console.WriteLine("escribe numero 2 (divisor)");
var entrada = Console.ReadLine();
esNum= int.TryParse(entrada, out divisor);
}
try{
 residuo= dividiendo % divisor;} catch (DivideByZeroException ex) {
Console.WriteLine("Error en la operacion, no puedes divir por cero "+ex);
}
return residuo;
}


}


public class sumOfEvens{

public int sumofevens(){
int suma=0;
for(int i=0;i<51;i++){//hasta 51 porque lo esta tomando hasta el 49
//residuo a ver si da cero
if(i % 2==0){suma=suma+i; }

}
return suma;
}


}

//ejercicio 10
public class StringLength{

public int stringlength(){
Console.WriteLine("escribe una palabra");
var  palabra = Console.ReadLine();
int tamanio= palabra.Length;

return tamanio;
}

}

public class AverageOfFour{
public double Averageoffour() {

int numero1=0;
int numero2=0;
int numero3=0;
int numero4=0;
double promedio=0.0;

Boolean esNum=false;

while(!esNum){
Console.WriteLine("Ingresa el primer numero");
var entrada1= Console.ReadLine();
esNum= int.TryParse(entrada1, out numero1);
}
esNum=false;
while(!esNum){
Console.WriteLine("Ingresa el segundo numero");
var entrada1= Console.ReadLine();
esNum= int.TryParse(entrada1, out numero2);
}
esNum=false;
while(!esNum){
Console.WriteLine("Ingresa el tercer numero");
var entrada1= Console.ReadLine();
esNum= int.TryParse(entrada1, out numero3);
}
esNum=false;
while(!esNum){
Console.WriteLine("Ingresa el cuarto numero");
var entrada1= Console.ReadLine();
esNum= int.TryParse(entrada1, out numero4);
}

promedio= (numero1+numero2+numero3+numero4)/4;
return promedio;
}



}