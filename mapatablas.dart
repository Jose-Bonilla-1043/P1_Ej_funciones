void main() {
  // Crear un Map<String, dynamic> para representar un producto
  Map<String, dynamic> producto = {
    'id_producto': 101,
    'nombre': 'Zapatillas Running',
    'descripcion': 'Zapatillas ligeras para correr largas distancias.',
    'tamaño': 42,
    'color': 'Azul',
    'precio': 89.99,
    'marca': 'SportMax',
  };

  // Crear un Map<String, dynamic> para representar un cliente
  Map<String, dynamic> cliente = {
    'id_cliente': 1,
    'nombre': 'Juan',
    'apellido': 'Pérez',
    'email': 'juan.perez@example.com',
    'telefono': '+123456789',
    'direccion': 'Calle Falsa 123, Madrid, España',
  };

  // Crear un Map<String, dynamic> para representar una venta
  Map<String, dynamic> venta = {
    'id_venta': 1001,
    'fecha': '2023-10-15',
    'estado': 'Completada',
    'cantidad': 2,
    'precio_total': 179.98,
    'id_producto': 101, // Relación con el producto
    'id_empleado': 501, // ID del empleado que realizó la venta
    'id_cliente': 1, // Relación con el cliente
  };

  // Imprimir la información del producto
  print('Información del producto:');
  producto.forEach((clave, valor) {
    print('$clave: $valor');
  });

  // Imprimir la información del cliente
  print('\nInformación del cliente:');
  cliente.forEach((clave, valor) {
    print('$clave: $valor');
  });

  // Imprimir la información de la venta
  print('\nInformación de la venta:');
  venta.forEach((clave, valor) {
    print('$clave: $valor');
  });

  // Acceder a valores específicos del producto
  print('\nDetalles del producto:');
  print('Nombre: ${producto['nombre']}');
  print('Precio: \$${producto['precio']}');
  print('Marca: ${producto['marca']}');

  // Acceder a valores específicos del cliente
  print('\nDetalles del cliente:');
  print('Nombre completo: ${cliente['nombre']} ${cliente['apellido']}');
  print('Email: ${cliente['email']}');
  print('Dirección: ${cliente['direccion']}');

  // Acceder a valores específicos de la venta
  print('\nDetalles de la venta:');
  print('Fecha: ${venta['fecha']}');
  print('Estado: ${venta['estado']}');
  print('Cantidad: ${venta['cantidad']}');
  print('Precio total: \$${venta['precio_total']}');
  print('ID Producto: ${venta['id_producto']}');
  print('ID Cliente: ${venta['id_cliente']}');
  print('ID Empleado: ${venta['id_empleado']}');

}