/*
Question 3
Write a Dart program that calculates the factorial of a number using a while loop.
*/
void main() {
  int? num = 5;
  int fact = 1;
  while (num! > 0) {
    fact *= num;
    num--;
  }
  print(fact);
}
