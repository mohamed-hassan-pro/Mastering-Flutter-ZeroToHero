/*
Q3
Create a class Person with private fields _firstName and _lastName.
- Add setters for both fields that reject empty strings (print 'Invalid name' if empty).
- Add getters for both fields.
- Add a computed getter fullName that returns 'firstName lastName'.
- In main(), demonstrate:
1. Creating a person with valid names and printing fullName.
2. Trying to set an empty string for firstName or lastName (should print 'Invalid name').
*/

void main() {
  Person person = Person();
  person.firstName = 'Mohamed';
  person.lastName = 'Hassan';
  print('Full Name: ${person.fullName}');

  person.firstName = '';
  person.firstName;
}

class Person {
  String _firstName = '';
  String _lastName = '';

  set firstName(String firstName) {
    if (firstName.isEmpty) {
      print('Invalid name');
    } else {
      this._firstName = firstName;
    }
  }

  set lastName(String lastName) {
    if (lastName.isEmpty) {
      print('Invalid name');
    } else {
      this._lastName = lastName;
    }
  }

  String get firstName => this._firstName;
  String get lastName => this._lastName;

  String get fullName => this._firstName + ' ' + this._lastName;
}
