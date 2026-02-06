/*
Q5. Objects & Access Attributes - Create a class Person with attributes firstName and lastName. -
Create an object from the class, assign values to its attributes, and print them.
*/

void main() {
  Person person = Person();

  person.firstName = "Mohamed";
  person.lastName = "Hassan";

  print("First Name: ${person.firstName}");
  print("Last Name: ${person.lastName}");
}

class Person {
  String? firstName;
  String? lastName;
}
