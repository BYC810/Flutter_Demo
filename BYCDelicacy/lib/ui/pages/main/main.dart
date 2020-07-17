import 'package:BYCDelicacy/ui/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

class BYCMainScreen extends StatefulWidget {
  static const String routeName = "/";
  @override
  _BYCMainScreenState createState() => _BYCMainScreenState();
}

class _BYCMainScreenState extends State<BYCMainScreen> {
  int _cuttentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _cuttentIndex,
        children: pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _cuttentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _cuttentIndex = index;
          });
        },
      )
    );
  }
}
