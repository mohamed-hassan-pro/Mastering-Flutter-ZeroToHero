/*
Question 4
Exercise 4 — Product Price Snapshot (Lists + Arithmetic)
Inside main():
1) Create List prices = [15.5, 9.99, 42.0];
2) Create double tax = 0.14;
3) Compute the total with tax for the first two items only and print.
4) Print whether the third item is more expensive than the first two average.
*/
void main() {
  List<num> prices = [15.5, 9.99, 42.0];
  double tax = 0.14;
  
  num total = tax * prices[0] + tax * prices[1];
  print('Total with tax for the first two items: $total');

  num avgFirstTowItems = total / 2;
  print(
    'Is the third item more expensive than the first two average? ${prices[2] > avgFirstTowItems}',
  );
}
