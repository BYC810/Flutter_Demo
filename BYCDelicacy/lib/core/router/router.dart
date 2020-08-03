import 'package:BYCDelicacy/ui/pages/detail/detail.dart';
import 'package:BYCDelicacy/ui/pages/main/main.dart';
import 'package:BYCDelicacy/ui/pages/meal/meal.dart';
import 'package:flutter/cupertino.dart';

class BYCRouter {
  static final String initialRoute = BYCMainScreen.routeName;

  static final Map<String,WidgetBuilder> routes = {
    initialRoute:(ctx) => BYCMainScreen(),
    BYCMealScreen.routeName:(context) => BYCMealScreen(),
    BYCMainScreen.routeName:(context) => BYCMainScreen(),
    BYCDetailScreen.routeName:(context) => BYCDetailScreen(),
  };

  static final RouteFactory generateRoute = (settings){
    return null;
  };

  static final RouteFactory unknownRoute = (settings){
    return null;
  };

}