
double calcularAreaTriangulo(double base, double altura) {
  return (base * altura) / 2;
}

void saludar(String nombre) {
  print("Hola, $nombre. ¡Bienvenido!");
}
void main() {
  print("Jose Antonio Bonilla Villalobos Mat:22308051281043");
  double base = 10.0;
  double altura = 5.0;
  double area = calcularAreaTriangulo(base, altura);

  print("El área del triángulo con base $base y altura $altura es: $area");


  saludar("Jose ");
}


