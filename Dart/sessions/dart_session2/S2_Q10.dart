/*
a) Demonstrate var vs dynamic: create a dynamic d and assign a String, then an int,
printing after each.
b) Create var message = 'hello'; reassign another String and print it.
c) Declare num n = 12.3456; print n.toInt() and n.toStringAsFixed(2).
*/
void main() {
  dynamic d = 'String';
  print('d: $d');
  d = 6;
  print('d After assign a New int Value: $d');

  var message = 'hello';
  print('message: $message');
  message = 'Dart';
  print('message reassign another String Value: $message');

  num n = 12.3456;
  print('n = $n => n = ${n.toInt()}');
}
