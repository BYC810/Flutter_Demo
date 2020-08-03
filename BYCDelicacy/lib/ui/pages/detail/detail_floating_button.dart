import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/viewmodel/favor_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BYCDetailFloatingButton extends StatelessWidget {

  final BYCMealModel _meal;

  const BYCDetailFloatingButton(this._meal);
  @override
  Widget build(BuildContext context) {
    return Consumer<BYCFavorViewModel>(
        builder: (ctx, favorVM, child) {
          final iconData =
          favorVM.isFavor(_meal) ? Icons.favorite : Icons.favorite_border;
          final iconColor =
          favorVM.isFavor(_meal) ? Colors.red : Colors.black;
          return FloatingActionButton(
            child: Icon(iconData,color: iconColor),
            onPressed: () {
              favorVM.handleMeal(_meal);
            },
          );
        });
  }
}
