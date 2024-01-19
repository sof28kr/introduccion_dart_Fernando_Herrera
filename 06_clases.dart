void main (){
  
  final wolverine = Hero(name: 'Logan',power: 'regeneracion');
  final wolverine1 = Hero(name: 'Logan');
  
  // final wolverine = new Hero('Logan','Regeneracion');
  // la palabra new parar creacion de clases es ahora inecesaria 
  
  // podemos especificar que wolverine es del tipo hero
  // final Hero wolverine = Hero('Logan','Regeneracion');
  
  print (wolverine);
  print (wolverine1);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero {
  // debemos inicializar para no tener null
  String name;
  String power;
  
  // opcion a:
  //este es el constructor, lo que se llama cuando se escribe Hero()
  // Hero( String pName, String pPower)
        // el this es opcional, por eso aparece resaltado, se puede o no poner
        //hace referencia a los atributos de arriba
        // this.name=pName;
    //:name=pName,
    //power=pPower;
  
  //opcion b que es la mas usada
  
  Hero({
    // lo separamos en dos lineas para que sea mas facil de leer y mantener
    required this.name, 
    this.power = 'Sin poder'
    // al usar esta linea damos el valor default 'Sin poder'  
      
    // colocar el required hace que ambos parametros sean obligatorios
    // colocar lo corchetes hace que sean por nombres  
  });
   
  //este es el constructor
  
  @override
  String toString(){
    return '$name - $power';
  }