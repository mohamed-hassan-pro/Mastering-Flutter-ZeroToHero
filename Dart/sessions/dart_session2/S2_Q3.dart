/*
a) Create String fullName with a space between first and last name.
b) Using the dot operator, print: fullName.length, fullName.toUpperCase(), and whether it
contains(" ").
c) Create String city with surrounding spaces (e.g., " Cairo ") and print city.trim().
*/
void main() {
  String fullName = 'Mohamed' + ' ' + 'Hassan';
  print(fullName.length);//it used to get the length of the string
  print(fullName.toUpperCase());//it used to convert all characters in the string to uppercase
  print(fullName.contains(" "));//it used to check whether the string contains the specified substring or not
  String city = '   Minya   ';
  print(city.trim());//it used to remove the spaces from the start and end of the string
}
