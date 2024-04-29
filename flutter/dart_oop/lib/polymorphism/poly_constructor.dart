class Glyph {
  void draw() {
    print("Glyph.draw()");
  }
  Glyph() {
    print("Glyph() before draw()");
    draw();
    print("Glyph() after draw()");
  }
}

class RoundGlyph extends Glyph {
  int _radius = 1;
  RoundGlyph(int r) {
    int _radius = r;
    print("RoundGlyph.RoundGlyph(), radius = $_radius");
  }
  
  @override
  void draw() {
    print("RoundGlyph.draw(), radius = " + "$_radius");
  }
}

void main() {
  RoundGlyph(5);
}