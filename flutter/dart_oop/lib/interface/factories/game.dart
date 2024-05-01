abstract interface class Game {
  bool move();
}

abstract interface class GameFactory {
  Game getGame();
}

class Chess implements Game {
  int _moves = 0;
  static const int _MOVES = 4;

  @override
  bool move() {
    print("Chess move $_moves");
    return ++_moves != _MOVES;
  }
}

class Checker implements Game {
  int _moves = 0;
  static const int _MOVES = 3;

  @override
  bool move() {
    print("Checkers move $_moves");
    return ++_moves != _MOVES;
  }
}

class ChessFactory implements GameFactory {
  @override
  Game getGame() {
    return Chess();
  }
}

class CheckerFactory implements GameFactory {
  @override
  Game getGame() {
    return Checker();
  }
}

class Factory {
  static void playGame(GameFactory factory) {
    Game g = factory.getGame();
    while (g.move()) {}
  }
}

void main() {
  Factory.playGame(CheckerFactory());
  Factory.playGame(ChessFactory());
}
