
import 'package:dart_oop/interface/filters/bandpass.dart';
import 'package:dart_oop/interface/filters/highpass.dart';
import 'package:dart_oop/interface/filters/lowpass.dart';
import 'package:dart_oop/interface/filters/waveform.dart';
import 'package:dart_oop/interface/interfaceprocessor/filter_processor.dart';

abstract interface class Processor {
  String name();

  Object process(Object input);
}

abstract class StringProcessor implements Processor {
  @override
  String name() {
    return toString();
  }

  @override
  String process(Object input);

  static String s = "If she weighs the same as a duck, she’s made of wood";
}

class Upcase extends StringProcessor {
  @override
  String process(Object input) {
    return (input).toString().toUpperCase();
  }
}

class Downcase extends StringProcessor {
  @override
  String process(Object input) {
    return input.toString().toLowerCase();
  }
}

class Splitter implements Processor {
  @override
  String name() {
    return toString();
  }

  @override
  List<String> process(Object input) {
    return input.toString().split(" ");
  }
}

class Apply {
  static void process(Processor p, Object s) {
    print("Using Processor ${p.name()}");
    print(p.process(s));
  }
}

void main() {
  Apply.process(Upcase(), StringProcessor.s);
  Apply.process(Downcase(), StringProcessor.s);
  Apply.process(Splitter(), StringProcessor.s);

  Waveform w = Waveform();
  Apply.process(FilterProcessor(BandPass(2.0, 4.0)), w);
  Apply.process(FilterProcessor(HighPass(2.0)), w);
  Apply.process(FilterProcessor(LowPass(4.0)), w);
}
