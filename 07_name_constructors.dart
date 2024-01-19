void main () {
  
  // una peticion http, web o un objeto a transformar
  final Map <String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Trepar paredes',
    'isAlive': true
  };
  
  final ironman = Hero(
  
    isAlive: false,
    name: 'Tony Stark',
    power: 'Money'
    
  );
  
  final ironman1 = Hero.fromJson(rawJson);
  
  // para transformar la peticion
  
  //final ironman1 = Hero(
  
    //isAlive: rawJason['isAlive']?? false,
    // el ?? evalua si el valor es nulo y le asigna el valor
    // en este caso un false
    //name: 'Tony Stark',
    //power: 'Money'
    
  // );
  
  print(ironman1);
  print(ironman);
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  // nombre igual al de la clase, constructor
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name']??'No name found',
      power = json['power']??'No power found',
      isAlive = json['isAlive']??'No isAlive found';
      // siempre manejar con la posibilidad de null
      
  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'YES!' : 'Nope'}';
    // el tercer parametro se entiende como una condicional
    // siendo yes la respuesta al true y nope al false
      
  }
  
}
