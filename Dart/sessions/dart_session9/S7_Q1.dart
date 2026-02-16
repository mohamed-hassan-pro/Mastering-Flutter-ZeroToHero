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
void main() {
  Vehicle vehicle1 = Vehicle(fuelRate: 0.05, tankCapacity: 50);
  Suv suv1 = Suv(fuelRate: 0.07, tankCapacity: 60, cargoWeight: 20);
  Sport sport1 = Sport(fuelRate: 0.1, tankCapacity: 45, isTurboMode: true);

  List<Vehicle> vehicles = [vehicle1, suv1, sport1];
  List<double> distances = [100, 200, 300];

  for (Vehicle vehicle in vehicles) {
    double totalFuel = 0;
    for (double distance in distances) {
      double fuel = vehicle.computeFuel(distance);
      totalFuel += fuel;
    }
    print("${vehicle.runtimeType} total fuel needed: $totalFuel");
    if (totalFuel > (vehicle._tankCapacity ?? 0)) {
      print("${vehicle.runtimeType} cannot complete the trip.");
    }
  }
}

class Vehicle {
  double? _fuelRate;
  double? _tankCapacity;

  Vehicle({double? fuelRate, double? tankCapacity}) {
    if (fuelRate != null && fuelRate < 0) {
      print("Error: Invalid fuel rate.");
    } else {
      _fuelRate = fuelRate;
    }

    if (tankCapacity != null && tankCapacity < 0) {
      print("Error: Invalid tank capacity.");
    } else {
      _tankCapacity = tankCapacity;
    }
  }

  double computeFuel(double distance) {
    if (_fuelRate == null) return 0;
    return distance * _fuelRate!;
  }
}

class Suv extends Vehicle {
  double? _cargoWeight;

  Suv({double? fuelRate, double? tankCapacity, double? cargoWeight})
    : super(fuelRate: fuelRate, tankCapacity: tankCapacity) {
    if (cargoWeight != null && cargoWeight < 0) {
      print("Error: Invalid cargo weight.");
    } else {
      _cargoWeight = cargoWeight;
    }
  }

  @override
  double computeFuel(double distance) {
    double baseFuel = super.computeFuel(distance);
    if (_cargoWeight != null && _cargoWeight! > 0) {
      baseFuel += _cargoWeight! * 0.1; // Add extra fuel based on cargo weight
    }
    return baseFuel;
  }
}

class Sport extends Vehicle {
  bool? _isTurboMode;

  Sport({double? fuelRate, double? tankCapacity, bool? isTurboMode})
    : super(fuelRate: fuelRate, tankCapacity: tankCapacity) {
    _isTurboMode = isTurboMode;
  }

  @override
  double computeFuel(double distance) {
    double baseFuel = super.computeFuel(distance);
    if (_isTurboMode == true) {
      baseFuel *=
          1.5; // Turbo mode increases fuel consumption by a factor of 1.5
    }
    return baseFuel;
  }
}
