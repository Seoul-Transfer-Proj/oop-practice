import 'package:dart_oop/polymorphism/vehicle/cycle.dart';

class Tricycle extends Cycle {
  @override
  void ride(int i) {
    print(wheel(i));
  }

  @override
  String wheel(int i) {
    return "Tricycle.wheel() $i";
  }
}
