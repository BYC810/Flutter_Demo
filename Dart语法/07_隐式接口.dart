main(List<String> args) {
  final superMan = SuperMan();
  superMan.eating();
  superMan.running();
  superMan.flying();
}

class Animal {
  void eating() {
    print("动物吃东西");
  }
}

class Runner {
  void running() {
    print("running");
  }
}

class Flyer {
  void flying() {
    print("flying");
  }
}

class SuperMan extends Animal with Runner, Flyer {
  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  }
}
