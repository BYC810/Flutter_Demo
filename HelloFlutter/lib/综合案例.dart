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
        title: Text("订单详情",style: TextStyle(
          fontSize: 30,
          color: Colors.red
        ),
        ),
      ),
      body: BYCTestFulWidget(),
    );
  }
}

class BYCHomeContent extends StatefulWidget {
  final String message;
  BYCHomeContent(this.message);
  @override
  _BYCHomeContent createState() => _BYCHomeContent();
}

class _BYCHomeContent extends State<BYCHomeContent> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          SizedBox(height: 8,),
          Text("当前计数:$_counter",style: TextStyle(fontSize: 30,color: Colors.black)),
          Text("${this.widget.message}")
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text("+",style: TextStyle(fontSize: 20,color: Colors.white)),
            color: Colors.red,
            onPressed: (){
              setState(() {
                _counter++;
              });
            }
        ),
        RaisedButton(
            child: Text("-",style: TextStyle(fontSize: 20,color: Colors.white)),
            color: Colors.orange,
            onPressed: (){
              setState(() {
                _counter--;
              });
            }
        )
      ],
    );
  }
}

class BYCTestFulWidget extends StatefulWidget {
  BYCTestFulWidget(){
    print("BYCTestFulWidget构造方法");
  }
  @override
  _BYCTestFulWidgetState createState() {
    print("BYCTestFulWidget createState方法");
    return _BYCTestFulWidgetState();
  }
}

class _BYCTestFulWidgetState extends State<BYCTestFulWidget> {
  var _counter = 0;
  _BYCTestFulWidgetState(){
    print("_BYCTestFulWidgetState构造方法");
  }
  @override
  Widget build(BuildContext context) {
    print("_BYCTestFulWidgetState build方法");
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: (){
          setState(() {
            _counter++;
          });
        },
        child: Icon(Icons.add),),
        Text("$_counter")
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("_BYCTestFulWidgetState didChangeDependencies方法");
  }

  @override
  void didUpdateWidget(BYCTestFulWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("_BYCTestFulWidgetState didUpdateWidget方法");
  }

  @override
  void initState() {
    super.initState();
    print("_BYCTestFulWidgetState initState方法");
  }

  @override
  void dispose() {
    super.dispose();
    print("_BYCTestFulWidgetState dispose方法");
  }
}

