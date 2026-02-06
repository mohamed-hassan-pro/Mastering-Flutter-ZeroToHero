/*
Q6. Missing Number in a Sequence - Ask the user to enter 5 numbers in a list (numbers between 1
and 10). - Check if there is any number missing from the sequence 1–10, and print the missing
ones.
*/

import 'dart:io';

void main() {
  List<int> inputs = [];
  
  print("Enter 5 numbers (between 1 and 10):");
  for (int i = 0; i < 5; i++) {
    stdout.write("Number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    inputs.add(num);
  }

  print("Missing numbers from the sequence 1-10:");
  for (int i = 1; i <= 10; i++) {
    if (!inputs.contains(i)) {
      print(i);
    }
  }
}
