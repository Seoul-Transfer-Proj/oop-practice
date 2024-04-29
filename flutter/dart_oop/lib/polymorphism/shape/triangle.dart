import 'package:dart_oop/polymorphism/shape/shape.dart';

class Triangle extends Shape {
  @override
  void draw() {
    print("Triangle.draw()");
  }

  @override
  void erase() {
    print("Triangle.erase()");
  }
}