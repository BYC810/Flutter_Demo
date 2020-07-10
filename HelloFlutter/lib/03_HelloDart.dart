import 'package:flutter/material.dart';

main() => runApp(BYCMyApp());

class BYCMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BYCHomePage()
    );
  }
}

class BYCHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter程序1",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
        ),
        body: BYCHomeCenterBody()
    );
  }
}

class BYCHomeCenterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: true, onChanged: (value) => print("2222")),
          Text("Flutter")
        ],
      ),
    );
  }
}