/*
Q2. Class with Method
- Create a class Student with attributes name and marks.
- Add a method hasPassed() that returns true if marks >= 50, otherwise false.
- In main(), create a student object and print whether they passed.
*/

void main() {
  Student Mohamed = Student('Mohamed', 99);
  print('Mohamed Passed?\n${Mohamed.hasPassed()}');
}

class Student {
  String name;
  double marks;

  Student(this.name, this.marks);

  bool hasPassed() {
    if (marks >= 50) {
      return true;
    } else {
      return false;
    }
  }
}
