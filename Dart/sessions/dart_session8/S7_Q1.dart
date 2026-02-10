/*
Q1
Create a class Temperature with a private field _celsius.
- Provide a setter celsius that checks if the input is in the range -100..100.
If valid → update _celsius, else print 'Invalid temperature'.
- Provide a getter celsius.
- Add a read-only computed getter fahrenheit that converts from _celsius.
- In main(), demonstrate:
1. Setting a valid value and printing both celsius and fahrenheit.
2. Trying to set an invalid value (should print 'Invalid temperature').
- Prove encapsulation: include a commented line temp._celsius = 999; showing direct access is not
allowed.
*/
void main() {
  Temperature temp = Temperature();
  temp.celsius = 20;
  print('Celsius: ${temp.celsius}');
  print('Fahrenheit: ${temp.fahrenheit}');

  temp.celsius = 200;
  temp.celsius;

  // temp._celsius = 999;
}

class Temperature {
  double _celsius = 0;

  set celsius(double celsius) {
    if (celsius >= -100 && celsius <= 100) {
      this._celsius = celsius;
    } else {
      print('Invalid temperature');
    }
  }

  double get celsius => this._celsius;

  double get fahrenheit => this._celsius * (9 / 5);
}
