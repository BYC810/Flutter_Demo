import 'package:flutter/material.dart';
import 'package:BYCDelicacy/ui/pages/favor/favor.dart';
import 'package:BYCDelicacy/ui/pages/home/home.dart';

final List<Widget> pages = [
  BYCHomeScreen(),
  BYCFavorScreen()
];

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
      title: Text("收藏"),
      icon: Icon(Icons.star)
  )
];