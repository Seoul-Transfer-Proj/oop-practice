import 'package:dart_oop/access/dessert/cookie.dart';

class ChocolateChip extends Cookie{
  ChocolateChip() {
    print("ChocolateChip constructor");
  }
  void chomp() {
  // cant' access _bite();
  }
}