class Animal {
	constructor(name, energy) {
		this.name = name;
		this.energy = energy;
	};
	eat(amount) {
		console.log(`${this.name} is eating.`);
		this.energy += amount;
	};
	sleep(length) {
		console.log(`${this.name} is sleeping.`);
		this.energy += length;
	};
	play(length) {
		console.log(`${this.name} is playing.`);
		this.energy -= length;
	};
	bark() {
		console.log('짖어');
	};
};
//Dog 클래스를 Animal 클래스의 자식으로 만들기
class Dog extends Animal{
	constructor(name, energy, breed) {
		//부모 오브젝트의 함수 호출하기
		super(name, energy);
		this.breed = breed;
	}
	bark() { // 메소드 오버라이딩
		console.log('멍멍');
		this.energy -= .1;
	};
};

class Cat extends Animal{
	constructor(name, energy, breed) {
		//부모 오브젝트의 함수 호출하기
		super(name, energy);
		this.breed = breed;
	}
	bark() {
		console.log('야옹');
		this.energy -= .1;
	};
};

const Tori = new Dog('토리', 7, '포메라니안');
const leo = new Cat('레오', 5, '러시안 블루');

console.log(Tori)
console.log(leo);
console.log(Animal.bark);
console.log(Dog.prototype);
// leo.play(2);
// console.log(leo.energy)
// leo.sleep(3)
// console.log(leo.energy)
// leo.bark()
// console.log(leo)