/*
Q7. Word Puzzle - Ask the user for a word. - If the word contains more than 5 characters, print it
reversed. - If it has 5 or fewer characters, print the word twice in a row (e.g., 'cat' → 'catcat').
*/

import 'dart:io';

void main() {
  stdout.write("Please enter a word: ");
  String word = stdin.readLineSync() ?? "";

  if (word.length > 5) {
    String reversedWord = word.split('').reversed.join('');
    print("Result (Reversed): $reversedWord");
  } else {
    print("Result (Doubled): ${word * 2}");
  }
}
