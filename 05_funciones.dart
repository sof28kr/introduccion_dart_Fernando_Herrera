void main () {
  
 print( greetEveryone1());
 print ('Suma: ${addTwoNumbers(10,20)}    ');
 // como ambos no son numeros, aqui ya tendria un error
 // print ('Suma: ${addTwoNumbers(10,'20')}');
 
  
  print('Suma funcion flecha: ${addTwoNumbers2(5,3)}');
  
  // print(greetPerson())
  // colocando control y espacio nos permite escoger que parametro usaremos  
  
  print(greetPerson(name:'Sofia',message: 'Hi there, '));
  
  //para seguir llamando parametros(, + (ctrl+espacio)
  
}


// al no especificar queda como un dynamic
greetEveryone() {
  return 'Hello Everyone!';
}

// como hemos especificados solo aceptara que retorne cadenas
String greetEveryone1() {
  return 'Hello Everyone!';
}

//funcion flecha (landa function)
//permite retornar un valor inmediatamente
//si se usa la flecha ya no se puede usar el return
String greetEveryone2() => 'Hello everyone';

int addTwoNumbers(a,b) {
  return a+b;
} 
// dejarlo asi seria problematico ya que no limita lo que podemos dar como parametro
   
int addTwoNumbers1(int a,int b) {
  return a+b;
} 
// restringiendo el tipo de parametro de entrada, la funcion es mejor

int addTwoNumbers2(int a,int b) => a+b;

// ¿Que pasa quiero como obligatorio solo uno de los parametros?
// a sera obligatorio y b es opcional

int addTwoNumbers3(int a,[int? b]) {
  // colocar el valor entre corchetes hace que sea null por defecto y opcional
  
  b=b??0;
  
    //podriamos tambien reducir 
    // b=b+1  =>  b++
    // b=b ?? 0  =>  b??=0
  
  // pregunta si b tiene un valor numerico y si no lo coloca como cero
  return a+b;
}

// tambien podria ser
int addTwoNumbers4(int a,[int b=0]){
  // asigna cero a b si no hay valor
  return a+b;
}


//*****************************************

// colocar los parametros de entrada entre corchetes
// permite que sean opcionales y por nombre
// opcional significa que puede tener valor de null en algun momento
String greetPerson({ required String name, String message = 'Hola,'}) {
  // el required hace que minimamente necesite ese parametro
  return '$message $name';
}