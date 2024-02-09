void main() async {
  
  print('inicio del programa');
  
  // El try catch nos deja intentar y tener una alternativa a si todo falla
  try {
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print(value);
  } catch (err){
    print("tenemos un error: ");
  }
  
  print('fin del programa');
}

// un asyncrono siempre va devolver un future

Future <String> httpGet (String url) async {
  
  return Future.delayed( const Duration(seconds: 1), (){
  
  throw "Error en la peticion";
    
  });
}
