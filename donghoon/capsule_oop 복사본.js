class Animal {
	constructor(name, energy) {
		let _name = name;
		let _energy = energy;

		this.getName = function() {
			return _name;
		};

		this.getEnergy = function() {
			return _energy;
		};

		this.eat = function(amount) {
			console.log(`${_name} is eating.`);
			_energy += amount;
		};

		this.sleep = function(length) {
			console.log(`${_name} is sleeping.`);
			_energy += length;
		};

		this.play = function(length) {
			console.log(`${_name} is playing.`);
			_energy -= length;
		};

		this.bark = function() {
			console.log('짖어');
		};
	}
};

class Dog extends Animal{
	constructor(name, energy, breed) {
		super(name, energy);
		this.breed = breed;
	}

	bark() { // 메소드 오버라이딩
		console.log('멍멍');
		this.getEnergy -= .1;
	};
};

class Cat extends Animal{
	constructor(name, energy, breed) {
		super(name, energy);
		this.breed = breed;
	}

	bark() {
		console.log('야옹');
		this.getEnergy -= .1;
	};
};

const Tori = new Dog('토리', 7, '포메라니안');
const leo = new Cat('레오', 5, '러시안 블루');

console.log(Tori.getName()); // 토리
console.log(leo.getEnergy()); // 5
console.log(Tori.name) // -> undifined