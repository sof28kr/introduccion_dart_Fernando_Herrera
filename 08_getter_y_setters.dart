void main (){
  
  // primer metodo de input
  final mySquare = Square( side: -10);
  
  // segundo metodo de input
  // mySquare.side = -25;
  
  // los asserts sirven para poner limites o restricciones
  
  print('area: ${mySquare.area}');
  
}

class Square {
  
  // _ transforma la variable de publica a privada
  double _side; //side*side
  // double son valores numéricos decimales que tienen punto decimal
  
  Square({required double side})
    : assert(side>=0, 'side must be >=0'),
      // el segundo parametro que colocamos acac nos permite
      // mandar un mensaje cuando la asersion salte
      _side = side;
  
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


