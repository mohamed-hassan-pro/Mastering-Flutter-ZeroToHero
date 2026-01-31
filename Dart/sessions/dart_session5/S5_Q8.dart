/*
Q8: Lottery Number Checker
- Generate a random list of 6 numbers between 1–50.
- Compare it with a ticket [5, 10, 15, 20, 25, 30] and print how many match.
*/

void main() {
  var randomList = [1, 5, 10, 20, 40, 60];
  var ticket = [5, 10, 15, 20, 25, 30];
  int matchCount = 0;
  for (int n in ticket) {
    if (randomList.contains(n)) {
      matchCount++;
    }
  }
  print('Number of matches: $matchCount');
}
