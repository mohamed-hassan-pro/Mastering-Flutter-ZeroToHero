/*
Question 5
Exercise 5 — Inventory Gate (If / Else + Logical)
Inside main():
1) int stock = 5; bool isMember = true; bool isWeekend = false;
2) If (stock > 0 && isMember) || isWeekend == true, print Allowed to buy; else print Not allowed.
3) Then set stock = 0 and rerun the same condition.
*/
void main() {
  int stock = 5;
  bool isMember = true;
  bool isWeekend = false;
  //                          T
  //              T           or          F
  //        T    and     T    or          F
  if ((stock > 0 && isMember) || isWeekend == true) {
    print('Allowed to buy');
  } else {
    print('Not allowed');
  }
}
