import 'package:dart_oop/polymorphism/shape/shape.dart';

class Circle extends Shape {
  @override
  void draw() {
    print("Circle.draw()");
  }

  @override
  void erase() {
    print("Cirecle.erase()");
  }

  @override
  void fill() {
    print("Circle.fill()");
  }
}