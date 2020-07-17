

import 'package:BYCDelicacy/core/router/router.dart';
import 'package:BYCDelicacy/ui/shared/app_theme.dart';
import 'package:BYCDelicacy/ui/shared/size_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BYCSizeFit.initialize();
    return MaterialApp(
      title: "美美搭",
      theme: BYCAppTheme.norTheme,
      initialRoute: BYCRouter.initialRoute,
      routes: BYCRouter.routes,
      onGenerateRoute: BYCRouter.generateRoute,
      onUnknownRoute: BYCRouter.unknownRoute,
    );
  }
}
