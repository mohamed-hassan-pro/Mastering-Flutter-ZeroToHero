/*
Q4: Word Counter
- Given "Dart is fun and Dart is powerful", count how many times each word appears.
- Print the most frequent word.
*/

void main() {
  String text = "Dart is fun and Dart is powerful";
  // count how many times each word appears
  var words = text.split(' '); // split the text into words
  Map<String, int> wordcount = {}; // create an empty map to store word counts
  for (String word in words) // iterate through each word
  {
    if (wordcount.containsKey(word)) {
      wordcount[word] = wordcount[word]! + 1;
    } // if word exists, increment its count
    else {
      wordcount[word] = 1;
    } // else, add the word with count 1
  } //now, wordcount map contains the count of each word
  print(wordcount);

  // find the most frequent word
  String mostFrequentWord = '';
  int maxCount = 0;
  wordcount.forEach((word, count) {
    if (count > maxCount) {
      maxCount = count;
      mostFrequentWord = word;
    }
  });
  print('Most frequent word: $mostFrequentWord');
}
