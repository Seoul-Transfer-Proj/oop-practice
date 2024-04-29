class Super {
  int field = 0;

  int getField() {
    return field;
  }

  Super() {
    print("Super 생성자 호출");
  }
}

class Sub extends Super {
  int field = 1;

  @override
  int getField() {
    return field;
  }

  int getSuperField() {
    return super.field;
  }

  Sub() {
    print("Sub 생성자 호출");
  }
}

void main() {
  Super sup = Sub();
  print("sup.field = ${sup.field}, sup.getField() = ${sup.getField()}");

  Sub sub = Sub();
  print(
      "sub.field = ${sub.field}, sub.getField() = ${sub.getField()}, sub.getSuperField() = ${sub.getSuperField()}");
}
