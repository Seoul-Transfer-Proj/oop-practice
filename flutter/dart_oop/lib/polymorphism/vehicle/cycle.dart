import 'package:dart_oop/polymorphism/vehicle/bicycle.dart';
import 'package:dart_oop/polymorphism/vehicle/tricycle.dart';
import 'package:dart_oop/polymorphism/vehicle/unicycle.dart';

enum Place { school }

class Cycle {
  void ride(int i) {
    print("Cycle.wheel() ${wheel(i)}");
  }

  String wheel(int i) {
    return "Cycle.wheel() $i";
  }
}

class Riding {
  static void ride(Cycle c) {
    c.ride(4);
  }
}

void main() {
  Riding.ride(Bicycle());
  Riding.ride(Tricycle());
  Riding.ride(Unicycle());
}
