import 'dart:math';

class Shape {
  double area() {
    return 0.0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);
  double area() {
    return length * width;
  }
}

void main() {
  Circle circle = Circle(10);
  Rectangle rectangle = Rectangle(50, 10);

  print("Circle Area: ${circle.area()}");
  print("Rectangle Area: ${rectangle.area()}");
}
