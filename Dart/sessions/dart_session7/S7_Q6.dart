/*
Q6. Method Returning a Value
- Create a class Rectangle with attributes width and height.
- Add a method perimeter() that returns the perimeter.
- In main(), create a rectangle and print its perimeter.
*/

void main() {
  Rectangle rectangle = Rectangle(50, 100);
  print('Perimeter of rectangle = ${rectangle.perimeter()}');
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  perimeter() {
    double perimeter = 2 * (height + width);
    return perimeter;
  }
}
