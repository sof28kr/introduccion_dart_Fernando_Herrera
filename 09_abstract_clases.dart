void main (){
  
  final windPlant = WindPlant(initialEnergy:100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print (windPlant);
  print ('wind : ${chargePhone(windPlant)}');
  print ('nuclear : ${chargePhone(nuclearPlant)}');
  
}

// las clases abstarctas nos pueden ser inicializadas
// algo como
// final windPlant = EnergyPlant(); 


double chargePhone(EnergyPlant plant){
  if (plant.energyLeft<10) {
    throw Exception ('Not enought energy');
  }
  return plant.energyLeft -10;
}



//creamos una lista ya que tenemos valores en 
//especificos y limitados
enum PlantType {nuclear,eolica,hidraulica}

abstract class EnergyPlant {
  
  double energyLeft;
  // String type; // nuclear , eolica, hidraulica
  final PlantType type;
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
  });
  
  void consumeEnergy( double amount);
  
}

// extends vs implements

//extends 
// jala todo los metodos
class WindPlant extends EnergyPlant {
  WindPlant ({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.eolica);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount; 
  }

}


// implements 
// solo jala un metodo en especifico

class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount*0.5); 
  }
  
}




