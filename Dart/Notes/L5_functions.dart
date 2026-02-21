import 'dart:io';

void main() {
  int? num1 = int.tryParse(stdin.readLineSync()!);
  int? num2 = int.tryParse(stdin.readLineSync()!);
  int sum = sumTowNumbers(num1 ?? 0, num2 ?? 0); // <= aerguments is values
  print(sum);
  double avg = sum / 8;
  print(avg);

  // ------optional parameter------
  print(calculateFinalPriceOptional(100, 5));
  print(calculateFinalPriceOptional(100));
  // -------named parameters-------
  print(calculateFinalPriceNamed(5, price: 100, discount: 5));
  print(calculateFinalPriceNamed(5, price: 100));
}

// -----------------------------

int sumTowNumbers(int num1, int num2) // <= parameters is variables
{
  int sum = num1 + num2;
  return sum;
}

// ------optional parameter------

double calculateFinalPriceOptional(double price, [double discount = 0])
// [optional parameter] -&- OP in end of parameters list
// = default value || Data type? => null safety
{
  double finalprice = price - price * (discount / 100);
  return finalprice;
}

// -------named parameters-------
double calculateFinalPriceNamed(
  int num, {
  required double price,
  double discount = 0 /*, int num*/ /*error*/,
})
// {named parameters} & NP by default are optional
// required keyword to make it Not optional
// Normal parameters in first place of parameters list => Normal is not OP or NP
{
  double finalprice = price - price * (discount / 100);
  return finalprice;
}
