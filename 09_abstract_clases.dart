void main (){
  
  // final windPlant = EnergyPlant();
  
}

// las clases abstarctas nos pueden ser inicializadas
// algo como
// final windPlant = EnergyPlant(); 


//creamos una lista ya que tenemos valores en 
//especificos y limitados
enum PlantType {nuclear,eolica,hidraulica}

abstract class EnergyPlant {
  
  double energyLeft;
  // String type; // nuclear , eolica, hidraulica
  PlantType type;
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
  });
  
  void consumeEnergy( double amount);
  
  
}
