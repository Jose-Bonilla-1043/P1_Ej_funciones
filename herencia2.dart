import 'dart:io';

// Clase base Entidad
class Entidad {
  int id;
  String nombre;

  Entidad({
    required this.id,
    required this.nombre,
  });

  void mostrarDetalles() {
    print('''
    ID: $id
    Nombre: $nombre
    ''');
  }
}

// Clase Producto que hereda de Entidad
class Producto extends Entidad {
  String descripcion;
  String talla;
  String color;
  double precio;
  String marca;

  Producto({
    required int id_producto,
    required String nombre,
    required this.descripcion,
    required this.talla,
    required this.color,
    required this.precio,
    required this.marca,
  }) : super(id: id_producto, nombre: nombre);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('''
    Descripción: $descripcion
    Talla: $talla
    Color: $color
    Precio: \$$precio
    Marca: $marca
    ''');
  }
}

// Clase Cliente que hereda de Entidad
class Cliente extends Entidad {
  String apellido;
  String email;
  String telefono;
  String direccion;

  Cliente({
    required int id_cliente,
    required String nombre,
    required this.apellido,
    required this.email,
    required this.telefono,
    required this.direccion,
  }) : super(id: id_cliente, nombre: nombre);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('''
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
  stdout.write('Talla: ');
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
    talla: talla,
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