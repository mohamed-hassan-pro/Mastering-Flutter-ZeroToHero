/*
Q6: Prime Numbers Finder
- Write a function isPrime(int n) that checks if a number is prime.
- Use it to print all prime numbers between 1 and 50.
*/

void main() {
  isPrime(50);
}

void isPrime(int n) {
  bool isPrime = true;
  for (int j = 2; j < n; j++) {
    if (n % j == 0) {
      isPrime = false;
    }
  }
  if (isPrime) {
    print(n);
  }
}
