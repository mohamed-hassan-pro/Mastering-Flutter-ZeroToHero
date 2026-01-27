/*
a) Declare: String name, int birthYear, double height, bool isStudent. Assign reasonable
values.
b) Using string interpolation, print one sentence describing all values.
c) Change height to a new value and print only the updated height.
*/
void main() {
  String Name = 'Mohamed';
  int birthYear = 2006;
  double height = 175.5;
  bool isStudent = true;

  print(
    "Name: $Name" +
        "\nBirth Year: $birthYear" +
        "\nHeight: $height" +
        "\nIs Student: $isStudent"
  );

  height = 177;
  print("Updated Height: $height");
}
