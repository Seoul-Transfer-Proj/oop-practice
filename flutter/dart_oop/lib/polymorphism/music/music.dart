import 'package:dart_oop/polymorphism/music/instrument.dart';
import 'package:dart_oop/polymorphism/music/note.dart';
import 'package:dart_oop/polymorphism/music/wind.dart';

void main() {
  Wind flute = Wind();
  Music.tune(flute);
}

class Music {
  static void tune(Instrument i) {
    i.play(Note.middleC);
  }
}
