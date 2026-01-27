/*
Question 3
Exercise 3 — Safe Input Defaults (Null Safety)
Inside main():
1) Declare String? nickname = null;
2) Use ?? to produce a safe value: String displayName = nickname ?? "Guest";
3) Print displayName.
4) Call displayName.toUpperCase() and print.
*/
void main() {
  String? nickname = null;
  String displayName = nickname ?? "Guest";
  print('NickName: $displayName');

  print('NickName as UpperCase: ${displayName.toUpperCase()}');
}
