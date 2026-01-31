/*
Q2: Grocery Price Calculator
- From this map: {"apple": 5, "banana": 3, "orange": 4, "mango": 10} add "grape": 7 and update
"banana" to 4.
- Given a shopping list ["apple", "apple", "mango"], calculate the total cost.
*/

void main() {
  Map<String, int> grocery = {
    "apple": 5,
    "banana": 3,
    "orange": 4,
    "mango": 10,
  };
  grocery['grape'] = 7; // add grape
  grocery['banana'] = 4; // update banana price

  // calculate total cost
  var shoppingList = ["apple", "apple", "mango"];
  int cost = 0;
  for (String item in shoppingList) {
    cost += grocery[item] ?? 0;
  }
  print(cost);
}
