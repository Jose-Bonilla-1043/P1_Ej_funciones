void main() {
  // Crear un Map<int, String> con 12 pares de datos (número de mes y nombre)
  Map<int, String> mesesDelAnio = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre',
  };

  // Imprimir el Map completo
  print('Meses del año: $mesesDelAnio');

  // Acceder a un valor específico usando una clave
  int mes = 5;
  print('El mes número $mes es: ${mesesDelAnio[mes]}');

  // Recorrer el Map e imprimir cada par clave-valor
  print('\nLista de meses:');
  // usando forEach
  mesesDelAnio.forEach((numero, nombre) {
    print('$numero: $nombre');
  });
}