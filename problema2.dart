import 'dart:io';

List<double> capturarDatos() {
  List<double> lista = [];
  print("Ingrese la cantidad de números decimales que desea agregar:");
  int cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print("Ingrese el número ${i + 1}:");
    double numero = double.parse(stdin.readLineSync()!);
    lista.add(numero);
  }

  return lista;
}

void mostrarElementos(List<double> lista) {
  print("\nElementos de la lista:");
  for (double numero in lista) {
    print(numero);
  }
}

double calcularPromedio(List<double> lista) {
  if (lista.isEmpty) {
    return 0.0;
  }
  double suma = lista.reduce((a, b) => a + b);
  return suma / lista.length;
}

void main() {
  print("Jose Antonio Bonilla Villalobos Mat:22308051281043");
  List<double> lista = capturarDatos();
  mostrarElementos(lista);
  double promedio = calcularPromedio(lista);
  print("\nEl promedio de los valores es: $promedio");
}