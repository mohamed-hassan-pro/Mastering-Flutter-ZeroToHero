/*
a) Create a Dart project file with a main function.
b) Inside main, print your full name on one line and your city on the next line using two print
statements.
c) Print a single multi■line string (using \n in one print) that shows a small card: name and city
on separate lines.
*/
void main() {
  String firstName = 'Mohamed';
  String lastName = 'Hassan';
  String fullName = '$firstName $lastName';
  String city = 'Minya';

  print("Full Name: $fullName");
  print("City: $city");

  print("Full Name: $fullName\nCity: $city");
}
