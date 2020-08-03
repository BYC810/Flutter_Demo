import 'package:flutter/material.dart';

class BYCHomeAppBar extends AppBar {
  BYCHomeAppBar(BuildContext context)
      : super(
            title: Text("美食"),
            leading: Builder(builder: (ctx) {
              return IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Scaffold.of(ctx).openDrawer();
                  });
            }));
}
