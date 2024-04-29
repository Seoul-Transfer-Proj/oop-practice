import 'package:dart_oop/polymorphism/shape/shape.dart';

class Square extends Shape {
  @override
  void draw() {
    print("Square.draw()");
  }

  @override
  void erase() {
    print("Square.erase()");
  }
}