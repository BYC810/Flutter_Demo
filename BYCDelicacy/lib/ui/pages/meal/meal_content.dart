import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/viewmodel/meal_view_model.dart';
import 'package:BYCDelicacy/ui/widgets/meal_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BYCMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context).settings.arguments as BYCCategoryModel;
    return Selector<BYCMealViewModel, List<BYCMealModel>>(
        selector: (ctx, mealVM) => mealVM.meals
            .where((element) => element.categories.contains(category.id))
            .toList(),
        shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
        builder: (ctx, meals, child) {
          return ListView.builder(
              itemCount: meals.length,
              itemBuilder: (ctx, index) {
                return BYCMealItem(meals[index]);
              });
        });
  }
}

//class BYCMealContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final category =
//    ModalRoute
//        .of(context)
//        .settings
//        .arguments as BYCCategoryModel;
//    return Consumer<BYCMealViewModel>(builder: (ctx, mealVM, child) {
//      final meals = mealVM.originMeals.where((meal) =>
//          meal.categories.contains(category.id)).toList();
//      return ListView.builder(
//          itemCount: meals.length,
//          itemBuilder:(ctx, index){
//            return ListTile(
//              title: Text(meals[index].title),
//            );
//          }
//      );
//    });
//  }
//}
