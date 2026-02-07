/*
Q9. Even, Odd, and Statistics
- Ask the user to enter 10 numbers in a list.
- Print how many are even and how many are odd.
- Calculate the total sum of all even numbers and all odd numbers separately.
- Finally, print which group (even or odd) has the larger sum.
*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 10; i++) {
    print('Enter Number ${i + 1}:');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      numbers[i] = int.parse(input);
    } else {
      print('Invalid input');
      i--; //So that it loops over this element again and doesn't skip it
    }
  }

  int evenCount = 0;
  int oddCount = 0;
  int evensum = 0;
  int oddnsum = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
      evensum += number;
    } else {
      oddCount++;
      oddnsum += number;
    }
  }
  print('Even Count = $evenCount');
  print('Odd Count = $oddCount');

  if (evensum > oddnsum) {
    print('sum of even groub => larger');
  } else {
    print('sum of odd groub => larger');
  }
}
