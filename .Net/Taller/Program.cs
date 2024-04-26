using System;
using System.Collections.Generic;

class Aprendiz
{
    public String Documento { get; set; }
    public string Nombre { get; set; }
    public int Inasistencias { get; set; }

    public Aprendiz(String documento, string nombre, int inasistencias)
    {
        Documento = documento;
        Nombre = nombre;
        Inasistencias = inasistencias;
    }
}

class Venta
{
    public string Codigo { get; set; }
    public string Nombre { get; set; }
    public double Precio { get; set; }
    public int Cantidad { get; set; }

    public Venta(string codigo, string nombre, double precio, int cantidad)
    {
        Codigo = codigo;
        Nombre = nombre;
        Precio = precio;
        Cantidad = cantidad;
    }

    public double CalcularValorAPagar()
    {
        if (Precio <= 0 || Cantidad <= 0)
        {
            throw new Exception("El precio y la cantidad deben ser mayores a 0.");
        }

        double valorTotal = Precio * Cantidad;
        double descuento = Cantidad > 10 ? valorTotal * 0.10 : 0;
        double iva = valorTotal * 0.19;

        return valorTotal + iva - descuento;
    }
}

class Program
{
    static void Main(string[] args)
    {
        List<Aprendiz> aprendices = new List<Aprendiz>();

        while (true)
        {
            Console.WriteLine("\nMenú:");
            Console.WriteLine("1. Registrar inasistencias");
            Console.WriteLine("2. Listar todas las inasistencias");
            Console.WriteLine("3. Listar los aprendices con inasistencias superiores a 3");
            Console.WriteLine("4. Consultar el total de inasistencias por aprendiz");
            Console.WriteLine("5. Valor a pagar");
            Console.WriteLine("6. Número de suerte");
            Console.WriteLine("7. Salir");

            string opcion = Console.ReadLine() ?? "";
            switch (opcion)
            {
                case "1":
                    RegistrarInasistencias(aprendices);
                    break;
                case "2":
                    ListarTodasInasistencias(aprendices);
                    break;
                case "3":
                    ListarInasistenciasSuperioresA3(aprendices);
                    break;
                case "4":
                    ConsultarTotalInasistenciasPorAprendiz(aprendices);
                    break;
                case "5":
                    CalcularValorAPagar();
                    break;
                case "6":
                    GenerarNumeroSuerte();
                    break;
                case "7":
                    Console.WriteLine("Adiós :)");
                    return;
                default:
                    Console.WriteLine("Por favor ingresa un número del 1 al 7.");
                    break;
            }
        }
    }

    static void RegistrarInasistencias(List<Aprendiz> aprendices)
    {
        Console.Write("Ingrese el documento del aprendiz: ");
        string documento = Console.ReadLine() ?? "";

        var aprendizExistente = aprendices.Find(aprendiz => aprendiz.Documento == documento);

        if (aprendizExistente != null)
        {
            try
            {
                Console.Write("Ingrese la cantidad de inasistencias adicionales: ");
                int nuevasInasistencias = int.Parse(Console.ReadLine() ?? "0");

                if (nuevasInasistencias < 1 || nuevasInasistencias > 100)
                {
                    Console.WriteLine("La cantidad de inasistencias debe estar entre 1 y 100.");
                    return;
                }

                aprendizExistente.Inasistencias += nuevasInasistencias;
                Console.WriteLine("Inasistencias actualizadas correctamente.");
            }
            catch (Exception)
            {
                Console.WriteLine("Error al ingresar las inasistencias.");
            }
        }
        else
        {
            try
            {
                Console.Write("Ingrese el nombre del aprendiz: ");
                string nombreCompleto = Console.ReadLine() ?? "";
                Console.Write("Ingrese la cantidad de inasistencias: ");
                int inasistencias = int.Parse(Console.ReadLine() ?? "0");

                if (inasistencias < 1 || inasistencias > 100)
                {
                    Console.WriteLine("La cantidad de inasistencias debe estar entre 1 y 100.");
                    return;
                }

                aprendices.Add(new Aprendiz(documento, nombreCompleto, inasistencias));
                Console.WriteLine("Aprendiz registrado correctamente.");
            }
            catch (Exception)
            {
                Console.WriteLine("No se pudo registrar el aprendiz :(");
            }
        }
    }

    static void ListarTodasInasistencias(List<Aprendiz> aprendices)
    {
        Console.WriteLine("Inasistencias de todos los aprendices:");
        int totalInasistencias =0;

        foreach (var aprendiz in aprendices)
        {
            totalInasistencias += aprendiz.Inasistencias;
            Console.WriteLine($"Nombre: {aprendiz.Nombre}, Inasistencias: {aprendiz.Inasistencias}");
        }
        Console.WriteLine($"Inasistencias totales: {totalInasistencias}");

    }

    static void ListarInasistenciasSuperioresA3(List<Aprendiz> aprendices)
    {
        Console.WriteLine("Aprendices con más de 3 inasistencias:");
        foreach (var aprendiz in aprendices)
        {
            if (aprendiz.Inasistencias > 3)
            {
                Console.WriteLine($"Nombre: {aprendiz.Nombre}, Inasistencias: {aprendiz.Inasistencias}");
            }
        }
    }

    static void ConsultarTotalInasistenciasPorAprendiz(List<Aprendiz> aprendices)
    {
        Console.Write("Ingrese el documento del aprendiz: ");
        string documento = Console.ReadLine() ?? "";

        var aprendiz = aprendices.Find(a => a.Documento == documento);
        if (aprendiz != null)
        {
            Console.WriteLine($"Inasistencias para el aprendiz {aprendiz.Nombre}: {aprendiz.Inasistencias}");
        }
        else
        {
            Console.WriteLine("No se encontró ningún aprendiz con ese documento.");
        }
    }

    static void CalcularValorAPagar()
    {
        Console.Write("Ingrese el código del producto: ");
        string codigo = Console.ReadLine() ?? "";
        Console.Write("Ingrese el nombre del producto: ");
        string nombre = Console.ReadLine() ?? "";
        Console.Write("Ingrese el precio del producto: ");
        double precio = double.Parse(Console.ReadLine() ?? "0");
        Console.Write("Ingrese la cantidad del producto: ");
        int cantidad = int.Parse(Console.ReadLine() ?? "0");

        try
        {
            Venta venta = new Venta(codigo, nombre, precio, cantidad);
            double valorAPagar = venta.CalcularValorAPagar();
            Console.WriteLine($"El total a pagar es: ${valorAPagar.ToString("0.00")}");
        }
        catch (Exception e)
        {
            Console.WriteLine($"{e.Message}");
        }
    }

    static void GenerarNumeroSuerte()
    {
        Random random = new Random();
        int numero = random.Next(1000);
        string numeroSuerte = numero.ToString().PadLeft(3, '0');
        Console.WriteLine($"Número de suerte: {numeroSuerte} :D");
    }
}
