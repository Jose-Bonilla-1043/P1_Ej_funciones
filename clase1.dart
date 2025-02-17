class Persona {
  // Atributos (propiedades)
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Funciones (métodos)
  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

void main() {
  
  print("Jose Antonio Bonilla Villalobos Mat:22308051281043");
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Juan', 25);

  // Acceder a los atributos
  print('Nombre: ${persona1.nombre}');
  print('Edad: ${persona1.edad} años');

  // Llamar a las funciones
  persona1.mostrarInformacion();

  // Verificar si es mayor de edad
  if (persona1.esMayorDeEdad()) {
    print('${persona1.nombre} es mayor de edad.');
  } else {
    print('${persona1.nombre} no es mayor de edad.');
  }
}