import 'package:flutter/material.dart';

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
      body: _BYCHomeContentState(),
      floatingActionButton: FloatingActionButton(
      onPressed: () => print(FloatingActionButton),
      child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _BYCHomeContentState extends StatefulWidget {
  @override
  __BYCHomeContentStateState createState() => __BYCHomeContentStateState();
}

class __BYCHomeContentStateState extends State<_BYCHomeContentState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: () => print("你好啊哈哈"),
        textColor: Colors.white,
        color: Colors.purple,
        child: Text("RaisedButton"),
        ),
        FlatButton(onPressed: () => print("你好啊哈哈"),
        child: Text("FlatButton"),
        color: Colors.orange,
        ),
        OutlineButton(onPressed: () => print("OutlineButton"),
        child:Text("OutlineButton"),
        ),
        FlatButton(onPressed: () => print("z自定义Button"),
          child: Row(
            children: <Widget>[
              Icon(Icons.favorite,color: Colors.red,),
              Text("喜欢作者"),
            ],
          ),
          color: Colors.amberAccent,
        ),
      ],
    );
  }
}

class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "嘎嘎嘎过",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.red
              )
          ),
          TextSpan(
              text: "嘎嘎\\n嘎过",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green
              )
          ),
          WidgetSpan(
            child: Icon(Icons.star,color: Colors.red,)),
          TextSpan(
              text: "嘎嘎嘎过",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
              )
          )
        ]
      )
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("TestsT\nestsTestsTe\\nstsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTestsTests",
    textAlign: TextAlign.left,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    textScaleFactor: 1.5,
    style: TextStyle(
      fontSize: 30,
      color: Colors.red,
      fontWeight: FontWeight.bold
    ),);
  }
}



