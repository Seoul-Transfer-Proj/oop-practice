import 'package:dart_oop/polymorphism/private_override/derived.dart';

class PrivateOverride {
  void _f() {
    print("private f()");
  }
}

void main () {
  PrivateOverride po = Derived();
  po._f();
}