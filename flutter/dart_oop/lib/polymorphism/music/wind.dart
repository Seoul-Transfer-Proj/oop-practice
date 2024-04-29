import 'package:dart_oop/polymorphism/music/instrument.dart';
import 'package:dart_oop/polymorphism/music/note.dart';

class Wind extends Instrument {
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

class Woodwind extends Wind {
  @override
  void play(Note n) {
    print("Woodwind.play() $n");
  }

  @override
  String what() => "Woodwind";
}

