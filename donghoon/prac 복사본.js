// 서울거래(SeoulTrade) 클래스 정의
class SeoulTrade {
    constructor() {
        this.users = [];
        this.stocks = [];
        // if (this.constructor === SeoulTrade) {
        //     throw new Error("추상 클래스로 인스턴스 생성이 불가합니다.");
        //   }
    }
    setUser(user) {
        this.users.push(user);
    }
    setStock(stock) {
        this.stocks.push(stock);
    }
    printInfo() {
        throw new Error('Method "printInfo" must be implemented.');
    }
}

// Stock 클래스 정의
class Stock {
    constructor(name, price) {
        this.name = name;
        this.price = price;
    }
    printInfo() {
        console.log(`Stock: ${this.name}, Price: ${this.price}`);
    }
}

// 사용자(User) 클래스 정의
class User {
    #stock = [];
    constructor(name, age, email) {
        this.name = name;
        this.age = age;
        this.email = email;
        this.bank = '신한투자증권';
        if (this.constructor === User) {
                throw new Error("인스턴스 생성 불가.");
            }
    }
    printInfo() {
        console.log(`Name: ${this.name}, Age: ${this.age}, Email: ${this.email} Stocks: ${this.#stock.map(s => `${s.name}(${s.price})`).join(', ')}`);
    }
    addStock(stock) {
        this.#stock.push(stock);
        console.log(`${this.name}에게 ${stock.name} 주식이 추가되었습니다.`);
    }
}

// 일반 사용자(NormalUser) 클래스 정의
class NormalUser extends User {
    constructor(name, age, email, stock) {
        super(name, age, email, stock);
    }
}

// 전문 사용자(ExpertUser) 클래스 정의
class ExpertUser extends User {
    #expert = true; // #prepix를 사용한 은닉화(private)

    constructor(name, age, email, stock) {
        super(name, age, email, stock); // 부모 클래스의 생성자 호출
    }
    getExpertStatus() { // #expert 필드에 대한 getter 메서드
        return this.#expert;
    }
    printInfo() { // 오버라이딩
        super.printInfo();
        // console.log(`${this.name}님은 전문투자자입니다 -> ${this.#expert}`);
    }
    specialFunction() {
        console.log(`${this.name}님은 전문 투자 종목의 거래가 가능합니다.`);
    }
}

// 주식 객체 생성
const stock1 = new Stock('비바리퍼블리카', 10000);
const stock2 = new Stock('서울거래', 20000);

// 일반사용자 객체 생성
const normaluser1 = new NormalUser('동훈', 29, 'donghoon@gmail.com');

// 전문사용자 객체 생성
const expertUser1 = new ExpertUser('태현', 35, 'taehyun@gmail.com');

normaluser1.addStock(stock1);
expertUser1.addStock(stock2);
expertUser1.addStock(stock1);

// 사용자 정보 및 주식 출력
normaluser1.printInfo();
expertUser1.printInfo(); 
console.log(expertUser1.getExpertStatus()); // getter를 사용해 접근해야지만 stock과 expert 확인 할 수 있다
console.log(expertUser1.expert);
console.log(expertUser1.stock)

console.log(expertUser1.__proto__)
console.log(ExpertUser.prototype)
console.log(ExpertUser.__proto__)
console.log(NormalUser.prototype)
console.log(User.prototype)
console.log(User.__proto__)

// console.log(seoulTrade.users[1])