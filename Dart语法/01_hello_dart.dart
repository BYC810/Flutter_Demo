main(List<String> args) {
  print("hello world");

  String name = "axiba";

  var age = 20;

  final height = 1.88;


  final date = DateTime.now();
  
  // final p1 = Person("张三");

  // final p2 = Person("张三");

  // print(identical(p1, p2));

    const p1 = Person("张三");

    const p2 = Person("张三");

    const p3 = Person("张mam");

    print(identical(p1, p3));


    var flag = "rrrr";

    var sting1 = """ 
      1
      3
      4
      5

    """;

    var message = "my name is chaochao age = $age type is ${name.runtimeType}";
    print(message + sting1);

}

class Person {
  final String name;
  const Person (this.name);
}