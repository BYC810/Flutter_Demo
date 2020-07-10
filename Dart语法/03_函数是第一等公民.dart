main(List<String> args) {



    test((a , b){
      return a + b;
    });

    print(demo()(100 , 2));
}

typedef CCC = int Function(int a , int b);

void test (CCC ccc) {
  print(ccc(10 , 20));
}

CCC demo(){
  return (a,b) {
    return a * b;
  };
}

void bar() {
  print("bar被调用");
}