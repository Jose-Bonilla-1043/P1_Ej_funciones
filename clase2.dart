import 'dart:io';

// Clase Producto
class Producto {
  int idProducto;
  String nombre;
  String descripcion;
  String tamano; // Cambiado de "tamaño" a "tamano"
  String color;
  double precio;
  String marca;

  // Constructor
  Producto(this.idProducto, this.nombre, this.descripcion, this.tamano, this.color, this.precio, this.marca);

  // Función para mostrar datos del producto
  void mostrarDatos() {
    print('''
    ID Producto: $idProducto
    Nombre: $nombre
    Descripción: $descripcion
    Tamaño: $tamano
    Color: $color
    Precio: \$$precio
    Marca: $marca
    ''');
  }
}

// Clase Cliente
class Cliente {
  int idCliente;
  String nombre;
  String apellido;
  String email;
  String telefono;
  String direccion;

  // Constructor
  Cliente(this.idCliente, this.nombre, this.apellido, this.email, this.telefono, this.direccion);

  // Función para mostrar datos del cliente
  void mostrarDatos() {
    print('''
    ID Cliente: $idCliente
    Nombre: $nombre $apellido
    Email: $email
    Teléfono: $telefono
    Dirección: $direccion
    ''');
  }
}

// Clase Venta
class Venta {
  int idVenta;
  String fecha;
  String estado;
  int cantidad;
  double precioTotal;
  int idProducto;
  int idEmpleado;
  int idCliente;

  // Constructor
  Venta(this.idVenta, this.fecha, this.estado, this.cantidad, this.precioTotal, this.idProducto, this.idEmpleado, this.idCliente);

  // Función para mostrar datos de la venta
  void mostrarDatos() {
    print('''
    ID Venta: $idVenta
    Fecha: $fecha
    Estado: $estado
    Cantidad: $cantidad
    Precio Total: \$$precioTotal
    ID Producto: $idProducto
    ID Empleado: $idEmpleado
    ID Cliente: $idCliente
    ''');
  }
}

// Función para capturar datos desde la interfaz
void captura() {
  print('Ingrese los datos del producto:');
  print('ID Producto:');
  int idProducto = int.parse(stdin.readLineSync()!);
  print('Nombre:');
  String nombre = stdin.readLineSync()!;
  print('Descripción:');
  String descripcion = stdin.readLineSync()!;
  print('Tamaño:');
  String tamano = stdin.readLineSync()!;
  print('Color:');
  String color = stdin.readLineSync()!;
  print('Precio:');
  double precio = double.parse(stdin.readLineSync()!);
  print('Marca:');
  String marca = stdin.readLineSync()!;

  // Crear instancia de Producto
  Producto producto = Producto(idProducto, nombre, descripcion, tamano, color, precio, marca);

  print('\nIngrese los datos del cliente:');
  print('ID Cliente:');
  int idCliente = int.parse(stdin.readLineSync()!);
  print('Nombre:');
  String nombreCliente = stdin.readLineSync()!;
  print('Apellido:');
  String apellido = stdin.readLineSync()!;
  print('Email:');
  String email = stdin.readLineSync()!;
  print('Teléfono:');
  String telefono = stdin.readLineSync()!;
  print('Dirección:');
  String direccion = stdin.readLineSync()!;

  // Crear instancia de Cliente
  Cliente cliente = Cliente(idCliente, nombreCliente, apellido, email, telefono, direccion);

  print('\nIngrese los datos de la venta:');
  print('ID Venta:');
  int idVenta = int.parse(stdin.readLineSync()!);
  print('Fecha:');
  String fecha = stdin.readLineSync()!;
  print('Estado:');
  String estado = stdin.readLineSync()!;
  print('Cantidad:');
  int cantidad = int.parse(stdin.readLineSync()!);
  print('Precio Total:');
  double precioTotal = double.parse(stdin.readLineSync()!);
  print('ID Empleado:');
  int idEmpleado = int.parse(stdin.readLineSync()!);

  // Crear instancia de Venta
  Venta venta = Venta(idVenta, fecha, estado, cantidad, precioTotal, producto.idProducto, idEmpleado, cliente.idCliente);

  // Mostrar datos capturados
  print('\nDatos del producto:');
  producto.mostrarDatos();

  print('Datos del cliente:');
  cliente.mostrarDatos();

  print('Datos de la venta:');
  venta.mostrarDatos();
}

void main() {
  print("Jose Antonio Bonilla Villalobos Mat:22308051281043");
  // Llamar a la función captura
  captura();
}