void main() async {
  
  print('inicio del programa');
  
  // El try catch nos deja intentar y tener una alternativa a si todo falla
  try {
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print('exito: $value');
    
  } on Exception catch(err) {
    print('tenemos una Exception: $err');
    
  } finally {
    print('Fin del try y catch');
  }
    
  print('fin del programa');
}

// un asyncrono siempre va devolver un future

Future <String> httpGet (String url) async {
  
  return Future.delayed( const Duration(seconds: 1), (){
  
  throw Exception('No hay parametros en le URL') ;
    
  });
}
