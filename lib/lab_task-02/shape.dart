import 'dart:math';

class Shape {
  double area() {
    return 0.0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  // Create Circle and Rectangle objects
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(20, 10);

  // Display areas
  print("Circle Area: ${circle.area().toStringAsFixed(1)}");
  print("Rectangle Area: ${rectangle.area()}");
}
