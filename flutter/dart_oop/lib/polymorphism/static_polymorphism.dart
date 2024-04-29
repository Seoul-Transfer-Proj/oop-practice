class StaticSuper {
  static String staticGet() {
    return "Base staticGet()";
  }

  String dynamicGet() {
    return "Base dynamic Get()";
  }
}

class StaticSub extends StaticSuper {
  static String staticGet() {
    return "Sub staticGet()";
  }

  @override
  String dynamicGet() {
    return "Sub dynamic Get()";
  }
}

void main() {
  StaticSuper spr = StaticSub();
  print(spr.dynamicGet()); // "Sub dynamic Get()"
  print(StaticSub.staticGet()); // "Sub staticGet()"
}
