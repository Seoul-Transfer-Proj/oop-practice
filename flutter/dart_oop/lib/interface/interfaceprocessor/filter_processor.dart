import 'package:dart_oop/interface/classprocessor.dart';
import 'package:dart_oop/interface/filters/bandpass.dart';
import 'package:dart_oop/interface/filters/filter.dart';
import 'package:dart_oop/interface/filters/waveform.dart';

class FilterProcessor implements Processor {
  Filter? filter;

  FilterProcessor(Filter this.filter);

  @override
  String name() {
    return filter!.name();
  }

  @override
  Waveform process(Object input) => filter!.process((input as Waveform));
}
