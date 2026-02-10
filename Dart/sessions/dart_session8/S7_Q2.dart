/*
Q2
Create a class Rectangle with private fields _width and _height.
- Public setters width and height:
If > 0 update, else print 'Invalid value for width/height'.
- Public getters width and height.
- Add a read-only computed getter area.
- In main(), demonstrate:
1. Creating a rectangle with valid values and printing width, height, and area.
2. Updating one side to a valid value and showing area changes.
3. Trying to set a negative value (should print 'Invalid value').
- Prove encapsulation: include a commented line rect._width = 0; to show it’s inaccessible.
*/

void main() {
  Rectangle rect = Rectangle();
  rect.height = 10;
  rect.width = 10;
  print('Heigh of Rectangle: ${rect.height}');
  print('Width of Rectangle: ${rect.width}');
  print('Area of Rectangle: ${rect.area}');
  // update heigh
  rect.height = 20;
  // area changes
  print('Area of Rectangle After Changes one side: ${rect.area}');
  // Trying to set a negative value
  rect.height = -20;
  rect.height;

  // rect._width = 0;
}

class Rectangle {
  double _width = 0;
  double _height = 0;
  set width(double width) {
    if (width > 0) {
      this._width = width;
    } else {
      print('Invalid value for width');
    }
  }

  set height(double height) {
    if (height > 0) {
      this._height = height;
    } else {
      print('Invalid value for height');
    }
  }

  double get width => this._width;

  double get height => this._height;

  double get area => this._height * this._width;
}
