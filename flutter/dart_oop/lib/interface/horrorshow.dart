abstract interface class Monster {
  void menace();
}

abstract interface class DangerousMonster extends Monster {
  void destroy();
}

abstract interface class Lethal {
  void kill();
}

class DragonZilla implements DangerousMonster {
  @override
  void menace() {}

  @override
  void destroy() {}
}

class SonDragonZilla extends DragonZilla {}

abstract interface class Vampire extends DangerousMonster implements Lethal {
  void drinkBlood();
}

class VeryBadVampire implements Vampire {
  @override
  void menace() {}

  @override
  void destroy() {}

  @override
  void kill() {}

  @override
  void drinkBlood() {}
}

class HorrorShow {
  static void u(Monster b) {
    b.menace();
  }

  static void v(DangerousMonster d) {
    d.menace();
    d.destroy();
  }

  static void w(Lethal l) {
    l.kill();
  }
}

void main() {
  DangerousMonster barney = DragonZilla();
  DangerousMonster zilla = SonDragonZilla();
  HorrorShow.u(barney);
  HorrorShow.v(barney);
  HorrorShow.u(zilla);
  HorrorShow.v(zilla);

  Vampire vlad = VeryBadVampire();
  HorrorShow.u(vlad);
  HorrorShow.v(vlad);
  HorrorShow.w(vlad);
}
