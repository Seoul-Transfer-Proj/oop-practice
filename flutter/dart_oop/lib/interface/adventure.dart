abstract interface class Canfly {
  void fly();
}

abstract interface class Canfight {
  void fight();
}

abstract interface class CanSwim {
  void swim();
}

abstract interface class CanClimb {
  void climb();
}

class ActionCharacter {
  void fight() {}
}

class Hero extends ActionCharacter implements Canfight, CanSwim, Canfly, CanClimb {
  @override
  void fly() {}

  @override
  void swim() {}

  @override
  void fight() {}

  @override
  void climb() {}
}

class Adventure {
  static void swim(CanSwim s) {
    s.swim();
  }

  static void fly(Canfly f) {
    f.fly();
  }

  static void fight(ActionCharacter c) {
    c.fight();
  }
}

void main() {
  Hero hero = Hero();
  Adventure.swim(hero);
  Adventure.fight(hero);
  Adventure.fly(hero);
}