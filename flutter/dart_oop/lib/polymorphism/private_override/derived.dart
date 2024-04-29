import 'package:dart_oop/polymorphism/private_override/private_override.dart';

class Derived extends PrivateOverride {

  @override
  void _f() {
    print("public f()");
  }
}