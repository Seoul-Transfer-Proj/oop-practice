import 'package:dart_oop/interface/filters/waveform.dart';

class Filter {
  String name() {
    return this.toString();
  }

  Waveform process(Waveform input) => input;
}
