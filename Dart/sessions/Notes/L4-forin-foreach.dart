void main() {
  //example of for in loop
  List<String> fruits = ['apple', 'banana', 'mango'];
  for (String fruit in fruits) {
    print(fruit);
  }

  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];
  numbers.forEach((no) {
    if (no % 3 == 0) {
      print(no);
    }
  });

  //example of for each loop
  List<String> vegetables = ['carrot', 'potato', 'tomato'];
  vegetables.forEach((vegetable) {
    print(vegetable);
  });
}
