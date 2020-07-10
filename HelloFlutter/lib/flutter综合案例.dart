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
      body: BYCHomeContent(),
    );
  }
}

class BYCHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BYCHomeProductItem("Apple1","MacBook","http://dik.img.kttpdq.com/pic/44/30438/819e9c525b613168_1366x768.jpg"),
        SizedBox(height: 8,),
        BYCHomeProductItem("Apple1","MacBook","http://dik.img.kttpdq.com/pic/19/12786/67278f953e503402_1024x768.jpg"),
        SizedBox(height: 8,),
        BYCHomeProductItem("Apple1","MacBook","http://dik.img.kttpdq.com/pic/27/18299/f31c1951c3218dfe_1366x768.jpg"),
      ],
    );
  }
}

class BYCHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  final style1 =  TextStyle(fontSize: 20,color: Colors.orange);
  final style2 =  TextStyle(fontSize: 20,color: Colors.green);

  BYCHomeProductItem(this.title,this.desc,this.imageURL);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 5,
          color: Colors.pink
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(title,style: style1),
            ],
          ),
          SizedBox(height: 8,),
          Text(desc, style: style2),
          SizedBox(height: 8,),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
