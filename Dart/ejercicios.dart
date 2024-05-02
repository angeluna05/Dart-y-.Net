// import 'dart:ffi';
// import 'dart:io';

//Ejercicio de ordenar las edades y contabilizar los mayores de edad

// void main (){
//   List <int> edades = [12,18,43,23,15,21];
//   print(edades);
//   edades.add(8);
//   print(edades);
//   print("La cantidad de los elementos de la lista es: ${edades.length}");
//   // Contabilizar los mayores de edad 
//   int contMayores = 0;
//   for (int i = 0; i < edades.length; i++) {
//     if (edades[i] >=18) {
//     contMayores ++;
//   }
//   }
//   print("Los mayores de edad son: ${contMayores}"); 
//   print("Edades sin ordenar: ${edades}");
//   edades.sort();
//   edades.removeAt(0); //Eliminar un elemento
//   print("Edades ordenadas: ${edades}");
// }


//Ejercicio de las listas de hombres y mujeres

// void main(){
  

//   List <String?> ListaM = [];
//   List <String?> ListaF = [];

//   for (var i = 0; i < 3; i++) {
//     print("Ingrese su nombre: ");
//   String? nombre = stdin.readLineSync();
//   print("Ingrese su género: (F/M)");
//   var genero = stdin.readLineSync();

//   if (genero == "F") {
//     ListaF.add(genero);
//   }
//   else if(genero == "M"){
//     ListaM.add(genero);
//   }
//   }
//   int? cantidadHombresPublicos;
//   int? cantidadMujeresPublicas;
//   for (var i = 1; i <= ListaM.length; i++) {
//     cantidadHombresPublicos = i;
//   }
//   for (var i = 1; i <= ListaF.length; i++) {
//     cantidadMujeresPublicas = i;
//   }
//   print("La cantidad de hombres es: ${cantidadHombresPublicos}");
//   print("La cantidad de mujeres es: ${cantidadMujeresPublicas}");
//   }
  


//Ejercicio del radio del círculo

// import 'dart:math';

// class Circulo {
//   double radio;

//   Circulo(this.radio);

//   double calcularArea() {
//     if (radio < 0) {
//       print('El radio no puede ser negativo.');
//     }
//     return pi * radio * radio;
//   }

//   double calcularPerimetro() {
//     if (radio < 0) {
//       print('El radio no puede ser negativo.');
//     }
//     return 2 * pi * radio;
//   }
// }

// void main() {
//   var circulo = Circulo(5);
//   print("Área del círculo \n");

//   if (circulo.radio >= 0) {
//     print('Área del círculo: ${circulo.calcularArea()}');
//     print('Perímetro del círculo: ${circulo.calcularPerimetro()}');
//   } else {
//     print('El radio del círculo no puede ser negativo.');
//   }
  
//   var circuloNegativo = Circulo(-5);
//   print("\nPerímetro del círculo");
//   if (circuloNegativo.radio >= 0) {
//     print('Área del círculo: ${circuloNegativo.calcularArea()}');
//     print('Perímetro del círculo: ${circuloNegativo.calcularPerimetro()} ');
//   } else {
//     print('\nEl radio del círculo no puede ser negativo.');
//   }
// }



//Ejercicio del dibujo del cuadrado

// import 'dart:io';

// void main(){
//   print("Ingrese el número de filas: ");
//   int numero =int.parse(stdin.readLineSync()!);
//   print("Dibujo del cuadrado");
//   funcionCuadrado(numero);
// }

// void funcionCuadrado(int numero){
//   for (int i = 0; i < numero; i++) {
//     for (int m  = 0; m < numero; m++) {
//       stdout.write('@ ');
//     }
//     stdout.writeln('');
//   }
// }



//Ejercicio de comprar y vender en el inventario

// import 'dart:io';

// class RegistroDatos {
//   List<String> datos = [];

//   void ingresarDatos() {
//     stdout.write('Ingrese el nombre: ');
//     String dato = stdin.readLineSync()!;
//     datos.add(dato);
//   }

//   void imprimirDatos() {
//     print('\nDatos almacenados:');
//     for (int i = 0; i < datos.length; i++) {
//       print('${i + 1}. ${datos[i]}');
//     }
//   }
// }

// void main() {
//   var registro = RegistroDatos();

//   for (int i = 0; i < 3; i++) {
//     print('\nRegistro ${i + 1}:');
//     registro.ingresarDatos();
//   }

//   registro.imprimirDatos();
// }import 'dart:io';

// import 'dart:io';

// class Producto {
//   late String nombre;
//   late int stock;
//   late double precioCompra;
//   late double precioVenta;

//   Producto(this.nombre, this.stock, this.precioCompra, this.precioVenta);

//   void comprar(int cantidad) {
//     if (cantidad > 0) {
//       stock += cantidad;
//       print('Se han comprado $cantidad unidades del producto $nombre.');
//     } else {
//       print('La cantidad a comprar debe ser mayor que 0.');
//     }
//   }

//   void vender(int cantidad) {
//     if (cantidad > 0 && stock >= cantidad) {
//       stock -= cantidad;
//       print('Se han vendido $cantidad unidades del producto $nombre.');
//     } else if (cantidad <= 0) {
//       print('La cantidad a vender debe ser mayor que 0.');
//     } else {
//       print('No hay suficiente stock disponible para vender.');
//     }
//   }

//   void mostrarStock() {
//     print('Stock actual del producto $nombre: $stock unidades.');
//   }
// }

// void main() {
//   print('¡Bienvenido al supermercado Super!');

//   List<Producto> inventario = [];

//   while (true) {
//     print('\nPor favor selecciona una opción:');
//     print('1. Comprar producto');
//     print('2. Vender producto');
//     print('3. Mostrar stock');
//     print('4. Salir');

//     String opcion = stdin.readLineSync() ?? '';

//     switch (opcion) {
//       case '1':
//         comprarProducto(inventario);
//         break;
//       case '2':
//         venderProducto(inventario);
//         break;
//       case '3':
//         mostrarStock(inventario);
//         break;
//       case '4':
//         print('¡Gracias por usar comprar en Super!');
//         return;
//       default:
//         print('Por favor seleccione una opción válida.');
//     }
//   }
// }

// void comprarProducto(List<Producto> inventario) {
//   print('\nIngrese el nombre del producto:');
//   String nombre = stdin.readLineSync() ?? '';

//   print('Ingrese el precio de compra del producto:');
//   double precioCompra = double.parse(stdin.readLineSync() ?? '0');

//   print('Ingrese el precio de venta del producto:');
//   double precioVenta = double.parse(stdin.readLineSync() ?? '0');

//   print('Ingrese el stock inicial del producto:');
//   int stock = int.parse(stdin.readLineSync() ?? '0');

//   var producto = Producto(nombre, stock, precioCompra, precioVenta);
//   inventario.add(producto);

//   print('Se han comprado $stock unidades del producto $nombre.');
// }
// void venderProducto(List<Producto> inventario) {
//   if (inventario.isEmpty) {
//     print('No hay productos en el inventario.');
//     return;
//   }

//   print('\nSeleccione el producto a vender:');
//   for (int i = 0; i < inventario.length; i++) {
//     print('${i + 1}. ${inventario[i].nombre}');
//   }

//   int seleccion = int.parse(stdin.readLineSync() ?? '0');
//   if (seleccion < 1 || seleccion > inventario.length) {
//     print('Opción no válida.');
//     return;
//   }

//   var producto = inventario[seleccion - 1];
//   if (producto.stock <= 5) {
//     print('Producto no disponible, el stock es menor a 5 unidades.');
//     return;
//   }

//   print('Ingrese la cantidad a vender:');
//   int cantidadVenta = int.parse(stdin.readLineSync() ?? '0');

//   producto.vender(cantidadVenta);
// }

// void mostrarStock(List<Producto> inventario) {
//   print('\nStock actual:');
//   for (var producto in inventario) {
//     producto.mostrarStock();
//   }
// }


//Ejercicio de clase abstracta con animales

// void main (){
//   final PerroX = new Perro();
//   PerroX.nombre = "Lola";
//   print("La vaca ${PerroX.getNombre()} hace ${PerroX.emitirSonido()}");
// }

// //CLASE ABSTTRACTA
// abstract class Animal{
//   int? patas;

//   //MÉTODO
//   void emitirSonido();
// }

// class Gato implements Animal{
//   int? patas;
//   void emitirSonido(){
//     print("Miau");
//   }
// }

// class Perro implements Animal{
//   int? patas;
//   String? nombre;

//   set setNombre (String nombre){
//     this.nombre = nombre;
//   }
  
//   String? getNombre(){
//     return this.nombre;
//   }


//   String emitirSonido(){
//     return"Guauuu";
//   }
// }


//Ejercicio del número de puertas del carro

// import 'dart:io';

// void main(){
//   // Vehiculo vehiculo1 = new Vehiculo("211AAA", "Negro", 2025);
//   // print(vehiculo1);
//   Carro carro1 = new Carro("XHW88D", "Azul", 2016);
//   print("Ingresa el número de puertas");
//   carro1.NumeroPuertas = int.parse(stdin.readLineSync()!);
//   print(carro1);
// }

// class Vehiculo{

//   //Definir atributos
//   String? placa;
//   String? color;
//   int modelo;


//   //CONSTRUCTOR



//   Vehiculo(String placa, String color, int modelo):
//   this.placa = placa,
//   this.color = color,
//   this.modelo = modelo;


// set Placa (String placa){
//   this.placa = placa;
// }

// String? getPlaca(){
//   return this.placa;
// }

// set Color (String color){
//   this.color = color;
// }

// String? getColor(){
//   return this.color;
// }

// set Modelo (int modelo){
//   this.modelo = modelo;
// }

// int getModelo(){
//   return this.modelo;
// }

// @override
// String toString(){
//   return ("Los datos del vehículo son: ${this.placa}, ${this.color}, ${this.modelo}");
// }
// }


// class Carro extends Vehiculo{
//   int? numeroPuertas;
 
//   Carro(String placa, String color, int modelo):
//   super (placa, color, modelo);

// set NumeroPuertas(int numeroPuertas){
//   if (numeroPuertas <= 0 || numeroPuertas > 4) {
//     print("Número de puertas imposible");
//     }
//     else{
//     this.numeroPuertas = numeroPuertas;
//     }
// }
// @override
// String toString(){
//   return ("Los datos del Carro son: ${this.placa}, ${this.color}, ${this.modelo}, ${this.numeroPuertas}");
// }
// }