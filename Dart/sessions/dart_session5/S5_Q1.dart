/*
Q1: Student Grades Analyzer
- Calculate the average grade from this list: [55, 72, 90, 45, 68, 100, 88, 73, 49].
- Create a new list with only grades above 80.
*/

void main() {
  var grades = [55, 72, 90, 45, 68, 100, 88, 73, 49];
  //  Calculate the average grade.
  int sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  double avg = sum / grades.length;
  print('Average grade: $avg');
  // Create a new list with only grades above 80.
  var gradesAbove80 = <int>[];
  grades.forEach((int grade) {
    if (grade > 80) {
      gradesAbove80.add(grade);
    }
  });
  print('Grades above 80: $gradesAbove80');
}
