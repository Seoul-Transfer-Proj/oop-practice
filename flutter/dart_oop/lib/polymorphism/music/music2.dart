import 'package:dart_oop/polymorphism/music/instrument.dart';
import 'package:dart_oop/polymorphism/music/note.dart';
import 'package:dart_oop/polymorphism/music/wind.dart';

class Stringed extends Instrument {
  @override
  void play(Note n) {
    print("Stringed.play() $n");
  }

  @override
  String what() => "Stringed";

  @override
  void adjust() {
    print("Adjusting Stringed");
  }
}

class Brass extends Wind {
  @override
  void play(Note n) {
    print("Brass.play() $n");
  }

  @override
  void adjust() {
    print("Adjusting Brass");
  }
}

class Music2 {
  static void tune([Wind? w, Stringed? s, Brass? b]) {
    if (w != null) {
      w.play(Note.middleC);
    } else if (s != null) {
      s.play(Note.middleC);
    } else {
      b?.play(Note.middleC);
    }
  }
}

class Music3 {
  static void tune(Instrument i) {
    i.play(Note.middleC);
  }
  static void tuneAll(List<Instrument> array) {
    for (int i = 0; i < array.length; i++) {
      tune(array[i]);
    }
  }
}

void main() {
  Wind flute = Wind();
  Stringed violin = Stringed();
  Brass frenchHorn = Brass();

  // music 2 example
  Music2.tune(flute);
  Music2.tune(null, violin);
  Music2.tune(null, null, frenchHorn);

  // music 3 example
  List<Instrument> array = [flute, violin, frenchHorn, Woodwind()];
  Music3.tuneAll(array);
}
