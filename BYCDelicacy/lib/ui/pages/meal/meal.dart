import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:BYCDelicacy/ui/pages/meal/meal_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BYCMealScreen extends StatelessWidget {
  static const String routeName = "/meal";

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context).settings.arguments as BYCCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: BYCMealContent(),
    );
  }
}
