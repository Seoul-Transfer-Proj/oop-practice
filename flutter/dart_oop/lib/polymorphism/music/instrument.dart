import 'note.dart';

class Instrument {
  void play(Note n) {
    print("Instrument.play() $n");
  }

  String what() => "Instrument";

  void adjust() {
    print("Adjusting Instrument");
  }
}
