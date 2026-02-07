/*
Q5. Constructor with Default Value
- Create a class Person with attributes name and age (default = 18).
- Create one person by setting both values and another using only the name.
- Print both details.
*/

void main() {
  Person person1 = Person('Mohamed', 20);
  Person person2 = Person('Mohamed');
  person1.printDetails();
  person2.printDetails();
}

class Person {
  String name;
  int age;

  Person(this.name, [this.age = 18]);

  void printDetails() {
    print('Name: $name, Age: $age');
  }
}
