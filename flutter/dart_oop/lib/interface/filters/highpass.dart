import 'package:dart_oop/interface/filters/filter.dart';
import 'package:dart_oop/interface/filters/waveform.dart';
import 'package:dart_oop/interface/interfaceprocessor/filter_processor.dart';

class HighPass extends Filter {
  double? cutoff;

  HighPass(this.cutoff);

  @override
  Waveform process(Object input) => input as Waveform;
}

