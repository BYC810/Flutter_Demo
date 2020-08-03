import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/viewmodel/favor_view_model.dart';
import 'package:BYCDelicacy/ui/pages/detail/detail_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detail_floating_button.dart';

class BYCDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as BYCMealModel;
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: BYCDetailContent(meal),
        floatingActionButton:BYCDetailFloatingButton(meal)
    );
  }
}
