class Animal {
  // Atributos
  int id_animal;
  String nombre;
  String raza;

  // Constructor el nombre de la funcion es igual al nombre de la clase
  Animal(this.id_animal, this.nombre, this.raza);

  // Método comer
  void comer() {
    print('$nombre está comiendo.');
  }//fin metodo comer
}//fin clase animal

class Perro extends Animal {
  // Constructor el nombre de la funcion es igual al nombre de la clase perro
  Perro(int id_animal, String nombre, String raza) : super(id_animal, nombre, raza);

  // Método correr
  void correr() {
    print('$nombre está corriendo.');
  }//fin metodo correr

  // Método dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }//fin metodo dormir
}//fin clase perro

void main() {
  print("Jose Antonio Bonilla Villalobos Mat: 22308051281043 6°I");
  // Crear una instancia de Perro
  // nombre del objeto es miPerro
  Perro tobi = Perro(1, 'Tobi', 'Labrador');

  // Usar los métodos
  tobi.comer();  // Heredado de Animal
  tobi.correr(); // De la clase Perro
  tobi.dormir(); // De la clase Perro
}
