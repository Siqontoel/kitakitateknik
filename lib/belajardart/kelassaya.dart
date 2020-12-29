class Manusia {
  void makan() {
    print("manusia sedang makan");
  }

  void minum() {
    print("manusia sedang minum");
  }

  void lawanMonster() {
    print("manusia sedang lawan Monster");
  }

  void mati() {
    print("manusia sedang mati");
  }
}

class Monster {
  void makan() {
    print("monster sedang makan");
  }

  void minum() {
    print("monster sedang minum");
  }

  void lawanMonster() {
    print("monster sedang lawan Monster");
  }

  void mati() {
    print("monster sedang mati");
  }
}

class Pohon extends Manusia {
  void program() {
    print("pohon sedang memprogram");
  }
}

main(List<String> args) {
  Manusia().makan();
  Pohon().makan();
  Pohon().program();
}
