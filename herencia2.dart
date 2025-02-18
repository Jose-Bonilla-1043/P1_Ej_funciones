import 'dart:io';

// Clase Producto
class Producto {
  int id_producto;
  String nombre;
  String descripcion;
  String talla; // Cambiado de "tamaño" a "talla"
  String color;
  double precio;
  String marca;

  Producto({
    required this.id_producto,
    required this.nombre,
    required this.descripcion,
    required this.talla, // Cambiado de "tamaño" a "talla"
    required this.color,
    required this.precio,
    required this.marca,
  });

  void mostrarDetalles() {
    print('''
    ID Producto: $id_producto
    Nombre: $nombre
    Descripción: $descripcion
    Talla: $talla
    Color: $color
    Precio: \$$precio
    Marca: $marca
    ''');
  }
}

// Clase Cliente
class Cliente {
  int id_cliente;
  String nombre;
  String apellido;
  String email;
  String telefono;
  String direccion;

  Cliente({
    required this.id_cliente,
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.telefono,
    required this.direccion,
  });

  void mostrarDetalles() {
    print('''
    ID Cliente: $id_cliente
    Nombre: $nombre
    Apellido: $apellido
    Email: $email
    Teléfono: $telefono
    Dirección: $direccion
    ''');
  }
}

// Función para capturar datos de un producto
Producto capturaDatosProducto() {
  print('Ingrese los datos del producto:');
  stdout.write('ID Producto: ');
  int id_producto = int.parse(stdin.readLineSync()!);
  stdout.write('Nombre: ');
  String nombre = stdin.readLineSync()!;
  stdout.write('Descripción: ');
  String descripcion = stdin.readLineSync()!;
  stdout.write('Talla: '); // Cambiado de "Tamaño" a "Talla"
  String talla = stdin.readLineSync()!;
  stdout.write('Color: ');
  String color = stdin.readLineSync()!;
  stdout.write('Precio: ');
  double precio = double.parse(stdin.readLineSync()!);
  stdout.write('Marca: ');
  String marca = stdin.readLineSync()!;

  return Producto(
    id_producto: id_producto,
    nombre: nombre,
    descripcion: descripcion,
    talla: talla, // Cambiado de "tamaño" a "talla"
    color: color,
    precio: precio,
    marca: marca,
  );
}

// Función para capturar datos de un cliente
Cliente capturaDatosCliente() {
  print('Ingrese los datos del cliente:');
  stdout.write('ID Cliente: ');
  int id_cliente = int.parse(stdin.readLineSync()!);
  stdout.write('Nombre: ');
  String nombre = stdin.readLineSync()!;
  stdout.write('Apellido: ');
  String apellido = stdin.readLineSync()!;
  stdout.write('Email: ');
  String email = stdin.readLineSync()!;
  stdout.write('Teléfono: ');
  String telefono = stdin.readLineSync()!;
  stdout.write('Dirección: ');
  String direccion = stdin.readLineSync()!;

  return Cliente(
    id_cliente: id_cliente,
    nombre: nombre,
    apellido: apellido,
    email: email,
    telefono: telefono,
    direccion: direccion,
  );
}

// Función principal
void main() {
   print("Jose Antonio Bonilla Villalobos Mat: 22308051281043");
  // Captura de datos de un producto
  Producto producto = capturaDatosProducto();
  print('\nDetalles del producto capturado:');
  producto.mostrarDetalles();

  // Captura de datos de un cliente
  Cliente cliente = capturaDatosCliente();
  print('\nDetalles del cliente capturado:');
  cliente.mostrarDetalles();
}