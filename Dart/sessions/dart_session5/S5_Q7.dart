/*
Q7: Temperature Converter
- Convert this list of Celsius temps [0, 20, 37, 100] to Fahrenheit.
- Print only the converted values above 90°F.
*/

void main() {
  var celsiusTemps = [0, 20, 37, 100];
  var fahrenheitTemps = [];
  for (var c in celsiusTemps) {
    fahrenheitTemps.add((c * 9 / 5) + 32);
  }
  for (var f in fahrenheitTemps) {
    if (f > 90) {
      print(f);
    }
  }
}
