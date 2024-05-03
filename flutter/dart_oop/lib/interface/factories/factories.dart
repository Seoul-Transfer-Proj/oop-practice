abstract interface class Service {
  void method1();

  void method2();
}

abstract interface class ServiceFactory {
  Service getService();
}

class Implementation1 implements Service {
  Implementation1();

  @override
  void method1() {
    print("Implementation1 method1");
  }

  @override
  void method2() {
    print("Implementation1 method2");
  }
}

class Implementation1Factory implements ServiceFactory {
  @override
  Service getService() {
    return Implementation1();
  }
}

class Implementation2 implements Service {
  Implementation2();

  @override
  void method1() {
    print("Implementation2 method1");
  }

  @override
  void method2() {
    print("Implementation2 method2");
  }
}

class Implementation2Factory implements ServiceFactory {
  @override
  Service getService() {
    return Implementation2();
  }
}

class Factories {
  static void serviceConsumer (ServiceFactory factory) {
    Service s = factory.getService();
    s.method1();
    s.method2();
  }
}

void main() {
  Factories.serviceConsumer(Implementation1Factory());
  Factories.serviceConsumer(Implementation2Factory());
}