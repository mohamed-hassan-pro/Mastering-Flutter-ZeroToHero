/*
a) Create a Map<String, dynamic> student like: {'name': 'Samy', 'age': 24, 'gpa': 3.5}.
b) Print student['name'], update student['gpa'], and add a new key 'city'.
c) Print student.keys, student.values, and whether it containsKey('age').*/
void main() {
  Map<String, dynamic> student = {'name': 'Mohamed', 'age': 20, 'gpa': 3.44};
  print('student name: ${student['name']}');
  student['gpa'] = 3.36;
  student['city'] = 'Minya';
  print('student keys: ${student.keys}');
  print('student keys: ${student.values}');
  print('student keys: ${student.containsKey('age')}');
  //(.containsKey)=>asks map if it contains specific Key
  //(.containsValue)=>asks map if it contains specific Value
}
