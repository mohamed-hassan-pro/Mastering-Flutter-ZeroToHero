/*
a) Create List<String> fruits with three items.
b) Add a new fruit using add(), remove the second item using removeAt(1), and change the
first item by index.
c) Print fruits.first, fruits.last, and fruits.length.
*/
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  //['Apple', 'Banana', 'Orange', 'Mango'] add 'Mango'
  fruits.add('Mango');
  //['Apple', 'Orange', 'Mango'] remove 'Banana'
  fruits.removeAt(1);
  //['Banana', 'Orange', 'Mango'] replace 'Apple' with 'Banana'
  fruits[0] = 'Banana';
  //print statments
  print('First fruit: ${fruits.first}');
  print('Last fruit: ${fruits.last}');
  print('Length of fruit List: ${fruits.length}');
}
