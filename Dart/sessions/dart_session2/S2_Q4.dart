/*
a) Declare int a and double b with any values.
b) Create num c = a + b; print c and c.toInt().
c) Print arithmetic results of a + a, a * 2, and b / 2.
*/
void main() {
  int a = 6;
  double b = 3.8;
  num c = a + b;
  print('a: $a, b: $b');
  print("Value of c: $c");
  print("Value of c as Integer: ${c.toInt()}");
  print("reuslt of a + a: ${a + a}");
  print("result of a * 2: ${a * 2}");
  print("result of b / 2: ${b / 2}");
}
