main(List<String> args) {
  var flag = Colors.green;
  switch (flag) {
    case Colors.red:
      print(Colors.red.index);
      break;
    case Colors.blue:
      print(Colors.blue.index);
      break;
    case Colors.green:
      print(Colors.green.index);
      break;
    default:
  }

  print(Colors.values);
}

enum Colors { red, blue, green }
