// See https://aka.ms/new-console-template for more information
/*Console.WriteLine("Escribe un numer");


int number= int.Parse(Console.ReadLine());
if(number<0) 

    Console.WriteLine("numero negativo");


else if(number>0) Console.WriteLine("Numero positivo");


    

else Console.WriteLine("es cero");*/


Console.WriteLine("por favor ingresa un numero ");

double a = double.Parse(Console.ReadLine());

Console.WriteLine("por favor ingresa segundo numero ");

double b = double.Parse(Console.ReadLine());

string indeterminado = "indeterminado";
Console.WriteLine($" valor de suma {a+b}, valor de multiplicacion, {a*b} division: {(b!=0 ? a/b : indeterminado)}"); 

