import 'package:BYCDelicacy/ui/pages/favor/favor_content.dart';
import 'package:flutter/material.dart';

class BYCFavorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的收藏"),
      ),
      body: Center(
        child: BYCFavorContent(),
      ),
    );
  }
}
