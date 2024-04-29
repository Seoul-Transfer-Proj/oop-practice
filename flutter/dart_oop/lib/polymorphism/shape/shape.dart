import 'package:dart_oop/polymorphism/shape/random_generator.dart';

void main() {
  List<Shape> shapeList = <Shape>[];
  RandomGenerator randomGenerator = RandomGenerator();
  for (int i = 0; i < 9; i++) {
    shapeList.add(randomGenerator.next());
  }
  for (int i = 0; i < shapeList.length; i++) {
    // shapeList[i].draw();
    shapeList[i].fill();
  }
}

class Shape {
  void draw() {}

  void erase() {}

  void fill() {
    print("Shape.fill()");
  }
}
