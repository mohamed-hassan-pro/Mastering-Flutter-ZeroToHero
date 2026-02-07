/*
Q1. Empty Class - Create an empty class named Car. - Print a message confirming that the class is
defined.
*/

void main() {
  Car car = Car();
  if (car is Car) {
    print("Class 'Car' is defined.");
  }
}

class Car {}
