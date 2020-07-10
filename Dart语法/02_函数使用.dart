main(List<String> args) {
  print(sum(10 , 20));
sayHello("234567890");
sayHello2("xidsd",18);
sayHello3("xidsd",height: 2);
}

sum(int num1,int num2) {
  return num1  + num2;
}

void sayHello(String name) {
  print(name);
}

void sayHello2(String name,[int age = 10, double height = 2222]) {

}

void sayHello3(String name,{int age = 21 , double height = 321}) {

}