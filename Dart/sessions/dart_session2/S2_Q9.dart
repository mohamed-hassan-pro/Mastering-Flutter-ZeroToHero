/*
a) Create List<Map<String, dynamic>> products with two items, each has name and price
(double).
b) Print the first product's name using index and key access.
c) Calculate a num total as products[0]['price'] + products[1]['price'] and print it with
toStringAsFixed(2).*/
void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 999},
    {'name': 'Smartphone', 'price': 299},
  ];

  print('the first product\'s name: ${products[0]['name']}');
  num totalPrice = products[0]['price'] + products[1]['price'];
  print('Total Price as Products: ${totalPrice.toStringAsFixed(2)}');
  //(.toStringAsFixed(2))=> 2 decimal places
}
