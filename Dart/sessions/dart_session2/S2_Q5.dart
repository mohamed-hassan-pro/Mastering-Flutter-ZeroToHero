/*
a) Declare two numbers x and y.
b) Print the results of comparison operators: x == y, x != y, x > y, x < y, x >= y, x <= y.
c) Create another number z and print whether z is equal to x + y using ==
*/
void main() {
  num x = 3, y = 6;
  print('x: $x, y: $y');
  print('x==y: ${x == y}');
  print('x!=y: ${x != y}');
  print('x>y: ${x > y}');
  print('x<y: ${x < y}');
  print('x>=y: ${x >= y}');
  print('x<=y: ${x <= y}');
  num z = 9;
  print('z == x + y: ${z == (x + y)}');
}
