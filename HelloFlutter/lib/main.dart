import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BYCHomePage(),
    );
  }
}

class BYCHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础的1"),
      ),
      body: _BYCHomeContent(),
    );
  }
}

class _BYCHomeContent extends StatefulWidget {
  @override
  _BYCHomeContentState createState() => _BYCHomeContentState();
}

class _BYCHomeContentState extends State<_BYCHomeContent> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //发送网络请求
    final dio = Dio();
    dio.get("https://httpbin.org/get").then((value) {
      print("get-$value");
    });
    dio.post("https://httpbin.org/post").then((value) {
      print("post-$value");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("123457");
  }
}
