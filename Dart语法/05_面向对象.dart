main(List<String> args) {
  // var p = Person.formNameAgeHeight("byc", 18,111);

  // dynamic obj = "byycccc";
  // print(obj.substring(1));

  var p1 = Person.fromMap({
    "name":"axiba",
    "age":18,
    "geight":1.88
  });

  print(p1);
}

class Person {
  String name;
  int age;
  double height;

  // Person(String name , int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name,this.age,{this.height});
  // Person(this.name,this.age,this.height);

  Person.formNameAgeHeight(this.name,this.age,this.height);
  Person.fromMap(Map<String,dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age $height";
  }
}