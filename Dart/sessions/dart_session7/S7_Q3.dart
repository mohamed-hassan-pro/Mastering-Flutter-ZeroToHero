/*
Q3. Multiple Objects in a List
- Create a class Car with attributes brand and year.
- In main(), create a list of 3 car objects.
- Print only the cars made after 2015.
*/

void main() {
  List<Car> cars = [Car('Toyota', 1989), Car('Honda', 2016), Car('Ford', 2026)];
  for (Car car in cars) {
    car.printCarsMadeAfter2015();
  }
}

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void printCarsMadeAfter2015() {
    if (year > 2015) {
      print('$brand made in $year');
    }
  }
}
