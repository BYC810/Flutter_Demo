import "utils/01_自定义工具.dart" as mUtils show sum, mul;
import 'package:http/http.dart' as http;

main(List<String> args) async {
  var url =
      'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print("1212212 = ${response.body}");
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void sum(num1, num2) {
  print(num1 + num2);
}
