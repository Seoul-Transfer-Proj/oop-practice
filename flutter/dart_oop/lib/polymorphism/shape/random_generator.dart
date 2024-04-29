import 'dart:math';
import 'package:dart_oop/polymorphism/shape/circle.dart';
import 'package:dart_oop/polymorphism/shape/shape.dart';
import 'package:dart_oop/polymorphism/shape/square.dart';
import 'package:dart_oop/polymorphism/shape/triangle.dart';

class RandomGenerator {
  Random rand = Random(47);

  Shape next() {
    switch (rand.nextInt(3)) {
      case 0:
        return Circle();
      case 1:
        return Triangle();
      case 2:
        return Square();
      default:
        return Shape();
    }
  }
}
