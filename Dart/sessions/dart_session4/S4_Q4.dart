/*
Question 4
Write a Dart program that keeps asking the user to enter a number until they enter 0, using a
do-while loop.
*/
import 'dart:io';

void main() {
  int? num;
  print('Enter a number: ');
  num = int.tryParse(stdin.readLineSync()!);
  if (num != 0) {
    do {
      print('Enter a number: ');
      num = int.tryParse(stdin.readLineSync()!);
    } while (num != 0);
  }
}