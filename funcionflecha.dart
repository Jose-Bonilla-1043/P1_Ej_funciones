int multiplicacion (int a,int b){
  return a*b;
}
double divicion (int a,int b){
  return a/b;
}
int flechamultiplicacion(int a,int b) =>  a*b;
double flechadivicion(int a,int b)=>  a/b;
//returnType functionName(parameters...) => expression;
void main(){
  print("Jose Antonio Bonilla Villalobos Mat: 22308051281043");
  print("Llamando a la funcion multiplicacion");
  print(multiplicacion(10,5));
  print("Llamando a la funcion flechamultiplicacion");
  print(flechamultiplicacion(3,5));

  print("Llamando a la funcion divicion divicion");
  print(divicion(10,3));
  print("Llamando a la funcion divicion flechadivicion");
  print(divicion(10,3));
}