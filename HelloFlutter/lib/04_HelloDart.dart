import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

class BYCHomeCenterBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BYCHomeCenterBodyState();
  }
}

class BYCHomeCenterBodyState extends State<BYCHomeCenterBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: flag, onChanged: (value) {
            setState(() {
              flag = value;
            });
          }),
          Text("Flutter")
        ],
      ),
    );
  }
}