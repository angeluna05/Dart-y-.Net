import 'dart:io';
import 'dart:math';

class Aprendiz {
  String documento;
  String nombre;
  int inasistencias;

  Aprendiz(this.documento, this.nombre, this.inasistencias);
}

class Venta {
  String codigo;
  String nombreVenta;
  double precio;
  int cantidad;

  Venta(this.codigo, this.nombreVenta, this.precio, this.cantidad);

  double calcularValorAPagar() {
    if (precio <= 0 || cantidad <= 0) {
      throw ("El precio y la cantidad deben ser mayores que cero.");
    }

    double valorTotal = precio * cantidad;
    double descuento = cantidad > 10 ? valorTotal * 0.10 : 0;
    double iva = valorTotal * 0.19;

    return valorTotal + iva - descuento;
  }
}

void main() {
  List<Aprendiz> aprendices = [];

  while (true) {
    print("\nMenú:");
    print("1. Registrar inasistencias");
    print("2. Listar todas las inasistencias");
    print("3. Listar los aprendices con inasistencias superiores a 3");
    print("4. Consultar el total de inasistencias por aprendiz");
    print("5. Valor a pagar");
    print("6. Número de suerte");
    print("7. Salir");

    String opcion = stdin.readLineSync() ?? "";
    switch (opcion) {
      case "1":
        registrarInasistencias(aprendices);
        break;
      case "2":
        listarTodasInasistencias(aprendices);
        break;
      case "3":
        listarInasistenciasSuperioresA3(aprendices);
        break;
      case "4":
        consultarTotalInasistenciasPorAprendiz(aprendices);
        break;
      case "5":
        calcularValorAPagar();
        break;
      case "6":
        generarNumeroSuerte();
        break;
      case "7":
        print("Adiós :)");
         return;
      default:
        print("Opción no válida, por favor ingresa un número del 1 al 7.");
    }
  }
}

void registrarInasistencias(List<Aprendiz> aprendices) {
  stdout.write("Ingrese el documento del aprendiz: ");
  String documento = stdin.readLineSync() ?? "";
  
  try {
    var aprendizExistente = aprendices.firstWhere((aprendiz) => aprendiz.documento == documento);
    
    stdout.write("Ingrese la cantidad de inasistencias adicionales: ");
    int nuevasInasistencias = int.parse(stdin.readLineSync() ?? "0");
    
    if (nuevasInasistencias < 1 || nuevasInasistencias > 100) {
      print("La cantidad de inasistencias debe estar entre 1 y 100.");
      return;
    }
    
    aprendizExistente.inasistencias += nuevasInasistencias;
    print("Inasistencias actualizadas correctamente.");
  } catch (e) {
    stdout.write("Ingrese el nombre completo del aprendiz: ");
    String nombreCompleto = stdin.readLineSync() ?? "";
    stdout.write("Ingrese la cantidad de inasistencias: ");
    int inasistencias = int.parse(stdin.readLineSync() ?? "0");
    
    if (inasistencias < 1 || inasistencias > 100) {
      print("La cantidad de inasistencias debe estar entre 1 y 100.");
      return;
    }
    
    aprendices.add(Aprendiz(documento, nombreCompleto, inasistencias));
    print("Aprendiz registrado correctamente.");
  }
}

void listarTodasInasistencias(List<Aprendiz> aprendices) {
  print("Inasistencias de todos los aprendices:");
  int totalInasistencias = 0;

  for (var aprendiz in aprendices) {
      totalInasistencias += aprendiz.inasistencias;

    print("Documento: ${aprendiz.documento}, Nombre: ${aprendiz.nombre}, Inasistencias: ${aprendiz.inasistencias}");
  }
      print("Inasistencias totales: ${totalInasistencias}");

}

void listarInasistenciasSuperioresA3(List<Aprendiz> aprendices) {
  print("Aprendices con más de 3 inasistencias:");
  for (var aprendiz in aprendices) {
    if (aprendiz.inasistencias > 3) {
      print("Nombre: ${aprendiz.nombre}, Inasistencias: ${aprendiz.inasistencias}");
    }
  }
}

void consultarTotalInasistenciasPorAprendiz(List<Aprendiz> aprendices) {
  stdout.write("Ingrese el documento del aprendiz: ");
  String documento = stdin.readLineSync() ?? "";
  for (var aprendiz in aprendices) {
    if (aprendiz.documento == documento) {
      print("Total de inasistencias del aprendiz ${aprendiz.nombre}: ${aprendiz.inasistencias}");
      return;
    }
  }
  

  print("No se encontró ningún aprendiz con ese documento.");
}

void calcularValorAPagar() {
  stdout.write("Ingrese el código del producto: ");
  String codigo = stdin.readLineSync() ?? "";
  stdout.write("Ingrese el nombre del producto: ");
  String nombre = stdin.readLineSync() ?? "";
  stdout.write("Ingrese el precio del producto: ");
  double precio = double.parse(stdin.readLineSync() ?? "0");
  stdout.write("Ingrese la cantidad del producto: ");
  int cantidad = int.parse(stdin.readLineSync() ?? "0");

  try {
    Venta venta = Venta(codigo, nombre, precio, cantidad);
    double valorAPagar = venta.calcularValorAPagar();
    print("El valor a pagar es: \$${valorAPagar.toStringAsFixed(2)}");
  } catch (e) {
    print("${e.toString()}");
  }
}

void generarNumeroSuerte() {
  var random = new Random();
  int numero = random.nextInt(1000);
  String numeroSuerte = numero.toString().padLeft(3, '0');
  print("Tu número de suerte es: ${numeroSuerte} :D");
}