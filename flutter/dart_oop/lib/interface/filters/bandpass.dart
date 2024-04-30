import 'package:dart_oop/interface/filters/filter.dart';
import 'package:dart_oop/interface/filters/waveform.dart';
import 'package:dart_oop/interface/interfaceprocessor/filter_processor.dart';

class BandPass extends Filter {
  double? lowCutoff, highCutoff;

  BandPass(double this.lowCutoff, double this.highCutoff);

  @override
  Waveform process(Object input) => input as Waveform;
}
