import 'package:dart_oop/polymorphism/music/note.dart';

abstract interface class Instrument {
  void play(Note n);

  String what();

  void adjust();
}

class Wind implements Instrument {
  @override
  void play(Note n) {
    print("Wind.play() " "$n");
  }

  @override
  String what() => "Wind";

  @override
  void adjust() {
    print("Adjusting Wind");
  }
}

class Percussion implements Instrument {
  @override
  void play(Note n) {
    print("Percussion.play() " "$n");
  }

  @override
  String what() => "Percussion";

  @override
  void adjust() {
    print("Adjusting Percussion");
  }
}

class Stringed implements Instrument {
  @override
  void play(Note n) {
    print("Stringed.play() " "$n");
  }

  @override
  String what() => "Stringed";

  @override
  void adjust() {
    print("Adjusting Stringed");
  }
}

class Woodwind extends Wind {
  @override
  void play(Note n) {
    print("Woodwind.play() " "$n");
  }

  @override
  String what() => "Woodwind";
}

class Brass extends Wind {
  @override
  void play(Note n) {
    print("Brass.play() " "$n");
  }

  @override
  String what() => "Brass";
}

class Music {
  void tune(Instrument i) {
    i.play(Note.middleC);
  }

  void tuneAll(List<Instrument> array) {
    for (int i = 0; i < array.length; i++) {
      tune(array[i]);
    }
  }
}

void main() {
  List<Instrument> arrays = [
    Wind(),
    Percussion(),
    Stringed(),
    Woodwind(),
    Brass()
  ];

  Music music = Music();
  music.tuneAll(arrays);
}
