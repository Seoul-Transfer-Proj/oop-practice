// 부모 클래스: 사용자(User) 클래스 정의
class User {
    constructor(name, age, email) { // 인스턴스 생성
        this.name = name;
        this.age = age;
        this.email = email;
        this.stock = [];
    }

    // 사용자 정보 출력 메서드
    printInfo() {
        console.log(`Name: ${this.name}, Age: ${this.age}, Email: ${this.email}, Stock:${this.stock}`);
    }

    // 주식 추가 메서드
    plusStock(stock) {
        this.stock.push(stock);
        console.log(`${this.name}에게 ${stock} 주식이 추가되었습니다.`)
    }
}

// 자식 클래스 -> 상속성
class ExpertUser extends User {
    constructor(name, age, email) {
        super(name, age, email); // 부모 클래스의 생성자 호출
        this.expert = true;
    }

    // VIP 사용자 정보 -> 오버라이딩??
    printInfo() {
        super.printInfo(); // 부모 클래스의 printInfo 메서드 호출
        console.log(`${this.name}님은 전문투자자입니다 -> ${this.expert}`);
    }

    // VIP 사용자 특별한 기능 -> 다형성
    specialFunction() {
        console.log(`${this.name}님은 전문 투자 종목의 거래가 가능합니다.`);
    }

}

// 사용자 객체 생성
const user1 = new User('동훈', 29, 'donghoon@gmail.com');
const user2 = new User('창환', 28, 'aaa@example.com');

// 사용자 정보 출력
user1.printInfo();
user2.printInfo();

// 주식 추가
user1.plusStock('비바리퍼블리카');
user1.printInfo();

// 전문사용자 객체 생성
const ExpertUser1 = new ExpertUser('태현', 35, 'yeonghee@gmail.com');

// VIP 사용자 정보 출력
ExpertUser1.printInfo();
ExpertUser1.specialFunction();
