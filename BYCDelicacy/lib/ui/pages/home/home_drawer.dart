import 'package:BYCDelicacy/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:BYCDelicacy/core/extension/extension_int.dart';

class BYCHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (BYCSizeFit.screenWidth / 3.0 * 2.0),
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeaderView(context),
            buildListTitle(context, Icon(Icons.restaurant), "进餐",(){
              print("进餐");
            }),
            buildListTitle(context, Icon(Icons.settings), "过滤",(){
              print("过滤");
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderView(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.px),
      width: double.infinity,
      height: 120.px,
      color: Colors.orange,
      alignment: Alignment(0,0.5),
      child: Text("开始动手",style: Theme.of(context).textTheme.display4),
    );
  }

  Widget buildListTitle(BuildContext context,Widget icon, String title, Function handler){
    return ListTile(
      leading: icon,
      title: Text(title,style: Theme.of(context).textTheme.display2),
      onTap: (){
        Navigator.of(context).pop();
        handler();
      },
    );

  }
}
