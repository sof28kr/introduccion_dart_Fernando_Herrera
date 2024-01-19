void main(){
  
  final String pokemon = 'Ditto';
  final int hp=100;
  // bool? isAlive1;
  // puede tomar tres valores (verdadero , falso y nulo)
  final bool isAlive = true;
  final abilities = ['impostor'];
  final abilities1 = <String>['ditto/front.png','ditto/back.png'];
  // <String> especifica que tipo de dato va dentro de las llaves
  final List<String> abilities2 = ['impostor'];
  // List<String> tambien especifica que tipo de variables va dentro
  // utilizar solo uno de ellos a la vez es recomendado
  
  // dynamic == null
  // el tipo de dato dynamic acepta todo tipo de datos y no se queda con uno solo
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;
  // pierde el null safety, tener cuidado
  
  
  // lo que esta dentro de la triple comilla es un string multilineal
  // es decir va en diferentes lineas
  print ("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $abilities1
  $abilities2
  $errorMessage
  
  """); 
  
  
}