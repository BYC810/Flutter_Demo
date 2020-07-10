main(List<String> args) {
  // var name = null;
  // // name ??= "lilei";
  // // print(name);

  // var temp = name ?? "axiba";
  // print(temp);

  // var p = Person();
  // p.name = "byc";
  // p.run();
  // p.eat();


  var p = Person()..name = "什么鬼"
                  ..eat()
                  ..run();

}

class Person {
  String name;
  void run(){
    print("running $name");
  }

  void eat(){
    print("eating");
  }
}