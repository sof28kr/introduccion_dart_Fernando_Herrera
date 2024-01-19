void main () {
  
  final Map<String, dynamic> pokemon = {
    // Hace referencia a como van los datos dentro del mapa
    // primero va un string y luego un dynamic
    'name':'Ditto',
    'hp':100,
    'isAlive':true,
    'abilities':<String>['Impostor'],
    'Sprites': <int, String>{
      1:'ditto/front.png',
      2:'ditto/back.png'
    }
    
  };
  
  final pokemon1 ={
    // automaticamente reconoce que tipo de dato va dentro
    1:'ABC',
    2:'XYZ',
    3:'123',
    158: 'ASFASFASF'
  };
  
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['Sprites']}');
  // para llamar a uno de las clases es entre [] 
  print('Back: ${pokemon['Sprites'][1]}');
  print('Front: ${pokemon['Sprites'][2]}');
  
  print(pokemon1);
}
        