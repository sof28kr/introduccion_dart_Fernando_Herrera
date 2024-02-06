void main (){
  
  final mySquare = Square( side:10);
  
  mySquare.side = -25;
  
  print('area: ${mySquare.area}');
  
}

class Square {
  
  // _ transforma la variable de publica a privada
  double _side; //side*side
  // double son valores numéricos decimales que tienen punto decimal
  
  Square({required double side})
    : _side = side;
  
  double get area {
    return _side*_side;
  }
  
  set side( double value ){
    print('setting new value $value');
    if (value < 0 ) throw 'Value must be >=0';
    // si se cumple la condicion, que lanza despues
    
    _side = value;
  }
  
  double calculateArea() {
    return _side * _side;
  }
  
}


