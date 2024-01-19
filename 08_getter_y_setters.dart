void main(){
  
  final mySquare = Square (side: -10);
  // funciona, pero seria mejor ponerle algunas restricciones
  // por ejemplo, que no acepte numeros negativos
  
  //mySquare._side = -5;
  
  // print('area: ${mySquare.calculateArea()}');
  // el basico
  
  print('area: ${mySquare.area}');
  
}

// hallar el area de un cuadrado
class Square {
  
  // _ transforma la variable de publica a privada
  double _side; //side * side
  // double son valores numéricos decimales que tienen punto decimal
  
  Square({
    required double side
  }):_side=side;
  
  // un getter
  double get area {
    return _side*_side;
  }
  
  // un setter
  set side (double value){
    print('setting new value $value');
    if (value<0) throw 'Value must be >+0';
    // si se cumple la condicion, que lanza despues
    
    _side=value;
  }
  
  double calculateArea() {
    return _side*_side;
  }
  
}
