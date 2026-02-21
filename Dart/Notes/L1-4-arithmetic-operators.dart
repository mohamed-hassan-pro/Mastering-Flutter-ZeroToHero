void main() {
  int intNo = 10 ~/ 3;
  // (10 ~/ 3 = 3) => result of (~/) is int
  print(intNo);
  double doubleNo = 10 / 3;
  // (10 / 3 = 3.33333) => result of (/) is double
  print(doubleNo);
  int anotherIntNo = 10 % 3;
  // (10 % 3 = 1) => 10 / 3 = 3.33333 and 0.33333 * 3 = 1
  print(anotherIntNo);
}