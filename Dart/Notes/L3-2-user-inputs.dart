import 'dart:io';

//this program to demonstrate user inputs with null safety
void main() {
  print('enter name: ');
  String? name = stdin.readLineSync();
  //nullable variable(?) and sure not null(!)
  //When you press Enter => store empty value not null
  //so Jest never prints after ?? operator => 'Guest'👇🏻
  print('hello ${name ?? 'Guest'}');
  // but👇🏻
  print('hello ${name!.isEmpty ? 'Guest' : name}');
  // if name is empty print 'Guest' else print name
  // or
  String? correctName = stdin.readLineSync();
  // That's safer
  if (correctName == null || correctName.trim().isEmpty) {
    print('Guest');
  } else {
    print(correctName);
  }
  // -------------------------------------------
  print('enter age: ');
  num? age = num.tryParse(stdin.readLineSync() ?? '0');
  //(.tryParse) returns null if the input is not a valid number
  //When you press Enter => store null value

  //but (.Parse) throws an exception if the input is not a valid number (When you press Enter)

  print('your age is ${age ?? 'unknown'}');
}

//When you press Enter prints:
// hello //because name is empty //not hello Guest
// your age is unknown //because age is null

//but when enter values(Mohamed,20) prints:
// hello Mohamed
// your age is 20
