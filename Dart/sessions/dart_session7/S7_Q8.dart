/*
Q8. Longest and Shortest Word
- Ask the user to input a sentence.
- Print the longest word and the shortest word in the sentence.
- Also print their lengths.
*/
import 'dart:io';

void main() {
  print('Enter Sentence:');
  String? sentence = stdin.readLineSync();
  if (sentence != null && sentence.isNotEmpty) {
    List<String> words = sentence.split(' ');
    String longest = words[0];
    String shortest = words[0];
    for (String word in words) {
      if (word.length > longest.length) {
        longest = word;
      }
      if (word.length < shortest.length) {
        shortest = word;
      }
    }
    print('Lengh of Longest word of Sentence: ${longest.length}');
    print('Lengh of Shortest word of Sentence: ${shortest.length}');
  } else {
    print('Invalid input');
  }
}
