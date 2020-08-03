import 'package:BYCDelicacy/core/viewmodel/favor_view_model.dart';
import 'package:BYCDelicacy/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BYCFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BYCFavorViewModel>(
        builder: (ctx,favorVM,child) {
          if (favorVM.meals.length == 0) {
            return Center(
              child: Text("未收藏美食"),
            );
          }
          return ListView.builder(
            itemCount: favorVM.meals.length,
            itemBuilder:(itemCtx,index) {
              return BYCMealItem(favorVM.meals[index]);
            }
          );
        }
    );
  }
}
