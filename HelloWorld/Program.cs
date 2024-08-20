

namespace HelloWorld
{

    class Program
    {


        static void Main()
        {

            DateOnly DateConverted = new DateOnly();
            Console.WriteLine("Cual es tu nombre");
            String nombre = Console.ReadLine();
            Console.WriteLine("Bienvenido " + nombre);
            Console.WriteLine("fecha de nacimiento en dd/mm/yyyy");
            String nacimiento = Console.ReadLine();
            Console.WriteLine("fecha ingresada " + nacimiento);
            bool IsDataRight = DateOnly.TryParse(nacimiento, out DateConverted);

            if (IsDataRight == false)
            {

                Console.WriteLine("fecha proporcionada incorrecta" + DateConverted);
            }
            Person persona = new Person
            {

                Name = nombre,
                Age = DateTime.Now.Year - DateConverted.Year,
                Birthday = DateConverted

            };
             Console.WriteLine("Bienvenido " + persona.Name);
             Console.WriteLine("Edad " + persona.Age);
             Console.WriteLine("Nacimiento " + persona.Birthday);
             Console.ReadLine();



        }



        public class Person
        {

            public String Name { get; set; }
            public int Age { get; set; }

            public DateOnly Birthday { get; set; }

        }


    }



}
