//Ejercicio de la calculadora

//Console.WriteLine("Calculadora");
//int numero1 = 7;
//int numero2 = 5;


//Console.WriteLine("Inserte un primer número: ");
//numero1 = Convert.ToInt32(Console.ReadLine());

//Console.WriteLine("Inserte el segundo número: ");
//numero2 = Convert.ToInt32(Console.ReadLine());

//int suma = numero1 + numero2;

//Console.WriteLine("La suma es: " + suma);

//int resta = numero1 - numero2;

//Console.WriteLine("La resta es: " + resta);

//float multiplicacion = numero1 * numero2;

//Console.WriteLine("La multiplicación es: " + multiplicacion);

//float division = numero1 / numero2;

//Console.WriteLine("La división es: " + division);

//int modulo = numero1 % numero2;

//Console.WriteLine("El módulo es " + modulo);


//Ejercicio de convertir dólares a pesos
//float dolares = 0;
//float pesos = 3885;

//Console.WriteLine("Inserte los dólares que deseas convertir");

//dolares = Convert.ToInt32(Console.ReadLine());

//float conversion = dolares * pesos;

//Console.WriteLine(dolares + " dólares equivale a " + conversion + " pesos colombianos");

//Ejercicio de los votos de 3 personas

//int votosJuanito = 0;
//int votosPepito = 0;
//int votosMemo = 0;
//int votosTotales = 0;
//float porcentaje1 = 0;
//float porcentaje2 = 0;
//float porcentaje3 = 0;
//float porcentaje = 0;

//Console.WriteLine("Inserte la cantidad de votos de Juanito: ");

//votosJuanito = Convert.ToInt32(Console.ReadLine());

//Console.WriteLine("Inserte la cantidad de votos de Pepito: ");

//votosPepito = Convert.ToInt32(Console.ReadLine());

//Console.WriteLine("Inserte la cantidad de votos de Memo: ");

//votosMemo = Convert.ToInt32(Console.ReadLine());

//votosTotales = votosJuanito + votosPepito + votosMemo;

//porcentaje1 = votosTotales / votosJuanito + votosJuanito;
//porcentaje2 = votosTotales / votosPepito + votosPepito;
//porcentaje3 = votosTotales / votosMemo;
//porcentaje = porcentaje1 + porcentaje2 + porcentaje3;

//Console.WriteLine("Votos totales = " + votosTotales);

//Console.WriteLine("El porcentaje de votos para Juanito es de: " + porcentaje1 + "%");
//Console.WriteLine("El porcentaje de votos para Memo es de: " + porcentaje3 + "%");
//Console.WriteLine("El porcentaje de votos para Pepito es de: " + porcentaje2 + "%");

//Ejercicio de arrays

//public class main()
//{
//    public static void Main()
//    {
//        double[] array = new double[5];
//        double numero = 0;
//        int increment = 0;


//        while (increment <= 4)
//        {
//            Console.WriteLine("Ingrese un número");
//            numero = Convert.ToInt32(Console.ReadLine());

//            array[increment] = numero;
//            increment++;
//        }
//        Console.WriteLine("Números desordenados:");
//        for (int i = 0; i < array.Length; i++)
//        {

//            Console.WriteLine(array[i]);
//        };
//        for (int a = 0; a < array.Length - 1; a++)
//        {
//            for (int m = 0; m < array.Length - 1; m++)
//            {
//                if (array[m] > array[m + 1])
//                {
//                    double ordenador = array[m];
//                    array[m] = array[m + 1];
//                    array[m + 1] = ordenador;
//                }
//            }
//        }
//        Console.WriteLine("Números ordenados:");
//        foreach (var i in array)
//        {
//            Console.WriteLine(i);

//        }
//    }
//}

//Ejercicio de funciones

//public class funciones
//{
//    public static void Main()
//    {
//        Console.WriteLine(valorConversion(10));
//        puntoCritico(valorConversion(10));
//        Console.WriteLine(dolarPeso(10));
//        Console.WriteLine("Ingrese el precio actual del dólar");
//        double actual = Convert.ToInt32(Console.ReadLine());

//        Console.WriteLine("Ingrese el precio anterior del dólar");
//        double anterior = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine(variacion(anterior, actual));

//    }
//    public static double valorConversion(int cantPesos)
//    {
//        return cantPesos / 4200.78;
//    }
//    public static void puntoCritico(double valorConversion)
//    {
//        String mensaje = "Normalidad económica";
//        if (valorConversion > 5000)
//        {
//            mensaje = ("Alerta económica");
//        }
//        Console.WriteLine(mensaje);
//    }
//    public static double dolarPeso(int cantDolar)
//    {
//        return cantDolar * 3900;
//    }

//    public static double variacion(double anterior, double actual)
//    {


//        return ((actual - anterior) / anterior) * 100;
//    }
//}

//Ejercicio de un módulo del proyecto

using System;

public class Retos
{
    protected string nombre;
    protected int edad;
    protected int documento;
    protected string institucion;

    public static void Main(string[] args)
    {
        Retos retos = new Retos();
        retos.LeerRetos();
    }

    public void LeerRetos()
    {
        for (int i = 0; i < 2; i++)
        {
            Console.WriteLine("\nIngresa el nombre del joven:");
            nombre = Console.ReadLine();
            Console.WriteLine("\nIngresa la edad del joven:");
            edad = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("\nIngresa el documento del joven:");
            documento = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("\nIngresa la institución del joven:");
            institucion = Console.ReadLine();
            MostrarDatos();
        }
    }

    public void MostrarDatos()
    {
        Console.WriteLine($"El nombre del joven es: {nombre}, la edad de {nombre} es {edad}.");
        Console.WriteLine($"Pertenece a la institución: {institucion} y su identificación es: {documento}.");
    }
}
