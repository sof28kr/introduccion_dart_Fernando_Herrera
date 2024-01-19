void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  print('List original $numbers');
  // poner la lista entre corquetes nos permite usar sus propiedades
  print('Lenght ${numbers.length}');
  //length nos permite ver la longitud
  
  //nos muestra el primer elemento
  print('Index 0: ${numbers[0]}');
  print('Index ultimo: ${numbers.last}');
  print('Index primero: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  //este es un iterable
  final reversedNumbers = numbers.reversed;
  // List []
  // itterable()
  // set {}(
  // el set es como un listado , pero sus valores son unicos (no valores duplicados)
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  // pasarlo a set puede eliminar los duplicados
  print('List original ${numbers.toSet().toList()}');
  
  
  // condicional, busca numeros en la lista que sean mayores a cinco
  
  final numberGreaterThan5 = numbers.where( (int num) {
    return num > 5 ; // si la condicion en true, la acumula
  } );
  
  print('>5: $numberGreaterThan5');
  print('>5 Set: ${numberGreaterThan5.toSet()}');
}                      
                    
     