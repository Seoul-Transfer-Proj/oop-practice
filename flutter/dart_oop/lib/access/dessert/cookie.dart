class Cookie {
  Cookie() {
    print("Cookie constructor");
  }
  void _bite(){
    print("bite");
  }
}

class ChocolateChip3 extends Cookie{
  ChocolateChip3() {
    print("ChocolateChip constructor");
  }
  void chomp() {
    _bite();
  }
}