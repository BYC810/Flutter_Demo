import 'package:BYCDelicacy/ui/pages/main/main.dart';
import 'package:flutter/cupertino.dart';

class BYCRouter {
  static final String initialRoute = BYCMainScreen.routeName;

  static final Map<String,WidgetBuilder> routes = {
    initialRoute:(ctx) => BYCMainScreen()
  };

  static final RouteFactory generateRoute = (settings){
    return null;
  };

  static final RouteFactory unknownRoute = (settings){
    return null;
  };

}