void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

// un objeto que funciona como un grifo de agua
// dando datos o equis informacion 

Stream <int> emitNumbers() {
  
  return Stream.periodic(const Duration(seconds: 1), (value){
    print('desde periodic $value');
    return value;
  }).take(5); // solo tomo un x numero de emisiones 

}
