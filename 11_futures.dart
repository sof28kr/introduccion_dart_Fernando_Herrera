void main() {
  print('inicio del programa');
  
  httpGet('http://fernando-herrera.com/cursos').then(
    (value) {
      print( value );
    })
    .catchError((err) {
    print('Error: $err');
  });
  
  print('fin del programa');
}

Future <String> httpGet (String url) {
  
  return Future.delayed( const Duration(seconds: 1), (){
    
    // throw es una excepcion, es dcir lo que pasa cuando
    throw 'Error en la peticion http';
    
    // un futuro nunca llega
    return 'Respuesta de la peticion http';
  });
}
