class Parent {
    parentMethod() {
      console.log("Parent method called");
    }
  }
  
  class Child extends Parent {
    childMethod() {
      console.log("Child method called");
    }
  }
  
  const obj = new Child();
  
  // obj의 프로토타입 체인을 살펴보면 Parent 클래스의 메서드가 포함되어 있는 것을 확인할 수 있습니다.
  