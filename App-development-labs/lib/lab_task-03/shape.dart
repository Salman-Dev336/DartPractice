import 'dart:math';

// Base class
class Shape {
  double area() {
    return 0; // default area
  }
}

// Circle subclass
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius; // πr²
  }
}

// Rectangle subclass
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width; // l × w
  }
}

void main() {
  // Polymorphism in action
  Shape circle = Circle(5); // Circle object as Shape type
  Shape rectangle = Rectangle(4, 6); // Rectangle object as Shape type

  print("Area of Circle: ${circle.area()}");
  print("Area of Rectangle: ${rectangle.area()}");
}
