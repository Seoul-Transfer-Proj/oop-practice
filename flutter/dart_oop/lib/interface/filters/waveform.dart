class Waveform {
  static double _counter = 0;
  final double id = _counter++;

  @override
  String toString() {
    return "Waveform $id";
  }
}

