function People () {
  this.name = '';
  this.gender = '';
  this.job = '';
  this.Run = function () {
    return this.name + '이 달린다.'
  }
}

var donghoon = new People();
donghoon.name = '동훈'
console.log(donghoon.name)
console.log(donghoon.Run())


// 사용자 생성 함수 (생성자 함수)
function User(name, age, email) {
  this.name = name;
  this.age = age;
  this.email = email;
  this.stock = [];
}

// 사용자 프로토타입에 메서드 추가
User.prototype.printInfo = function () {
  console.log(`Name: ${this.name}, Age: ${this.age}, Email: ${this.email}, Stock: ${this.stock}`);
};

User.prototype.increaseAge = function () {
  this.age++;
};

User.prototype.plusStock = function (stock) {
  this.stock.push(stock);
  console.log(`${this.name}에게 ${stock} 주식이 추가되었습니다.`);
};

// 사용자 객체 생성
const user1 = new User('동훈', 29, 'donghoon@gmail.com');
const user2 = new User('창환', 28, 'aaa@example.com');

// 사용자 정보 출력
user1.printInfo();
user2.printInfo();

// 사용자 나이 증가
user1.increaseAge();
user1.printInfo();

// 주식 추가
user1.plusStock('비바리퍼블리카');
user1.printInfo();
