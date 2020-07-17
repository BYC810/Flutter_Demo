import 'package:BYCDelicacy/ui/pages/home/home_content.dart';
import 'package:flutter/material.dart';

class BYCHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食"),
      ),
      body:BYCHomeContent(),
    );
  }
}
