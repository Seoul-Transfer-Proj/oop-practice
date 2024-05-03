abstract class Animal {
  // make a abstract method
  void print();

  Animal() {
    print();
  }
}

class Duck extends Animal {
  int legs = 4;

  @override
  int print() {
    return legs;
  }
}

abstract class BaseClass {}

class DerivedClass extends BaseClass {
  void derivedMethod() {
    print("Method in DerivedClass");
  }
}

void callDerivedMethod(BaseClass base) {
  if (base is DerivedClass) {
    base.derivedMethod();
  } else {
    print(
        "Unable to call method because the object is not an instance of DerivedClass");
  }
}

void main() {
  // abstract class의 객체를 생성하려는 경우
  // Animal animal = Animal();

  Duck duck = Duck();
  print(duck.print());

  BaseClass base = DerivedClass();
  callDerivedMethod(base);
}
