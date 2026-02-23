/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
*/
class Vehicle {
  double _tankCap = 0;
  double _fuelRate = 0;

  Vehicle({
    required double tankCap,
    required double fuelRate,
  }) {
    if (tankCap > 0 && fuelRate > 0) {
      this._tankCap = tankCap;
      this._fuelRate = fuelRate;
    } else {
      print("Invalid vehicle data");
    }
  }

  double calcFuel({required double distance}) => distance * _fuelRate;
  bool canCompleteTrip(double distance) => calcFuel(distance: distance) <= _tankCap;
}

class Car extends Vehicle {
  double _carWt = 0;
  Car({required super.tankCap, required super.fuelRate,required double weight}){
    if(weight > 0){
      this._carWt = weight;
    }else{
      print("Invalid weight value");
    }
  }
  @override
  double calcFuel({required double distance}) {
    return super.calcFuel(distance: distance) * (1 + _carWt / 1000);
  }
  @override
  bool canCompleteTrip(double distance) => calcFuel(distance: distance) <= _tankCap;
}

class Truck extends Vehicle {
  double _truckWt = 0;
  double _cargoCap = 0;  //وزن الحمولة

  Truck({required super.tankCap, required super.fuelRate,required double cargoCapacity}){
    if(cargoCapacity > 0){
      this._cargoCap = cargoCapacity;
    }else{
      print("Invalid cargo capacity value");
    }
  }
  @override
  double calcFuel({required double distance}) {
    return super.calcFuel(distance: distance) * (1 + _cargoCap / 1000);
  }
  @override
  bool canCompleteTrip(double distance) => calcFuel(distance: distance) <= _tankCap;
}

class Bus extends Vehicle {
  double _busWt = 0;
  double _paxCap = 0;  //سعة الركاب
  Bus({required super.tankCap, required super.fuelRate,required double passengerCapacity}){
    if(passengerCapacity > 0){
      this._paxCap = passengerCapacity;
    }else{
      print("Invalid passenger capacity value");
    }
  }
  @override
  double calcFuel({required double distance}) {
    return super.calcFuel(distance: distance) * (1 + _paxCap / 1000);
  }
  @override
  bool canCompleteTrip(double distance) => calcFuel(distance: distance) <= _tankCap;
}


void main() {
  List<Vehicle> vehicles = [
    Car(tankCap: 50, fuelRate: 0.1, weight: 1500),
    Truck(tankCap: 100, fuelRate: 0.2, cargoCapacity: 2000),
    Bus(tankCap: 80, fuelRate: 0.15, passengerCapacity: 50)
  ];

  List<double> distances = [100, 200, 300];

  for (Vehicle vehicle in vehicles) {
    double totalFuel = 0;
    for (double distance in distances) {
      totalFuel += vehicle.calcFuel(distance: distance);
    }
    print("Vehicle ${vehicle.runtimeType} total fuel needed: $totalFuel");
    if (!vehicle.canCompleteTrip(distances.last)) {
      print("Vehicle ${vehicle.runtimeType} cannot complete the last trip.");
    }
  }
}
