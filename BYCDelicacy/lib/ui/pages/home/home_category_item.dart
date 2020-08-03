import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:BYCDelicacy/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:BYCDelicacy/core/extension/extension_int.dart';

class BYCHomeCategoryItem extends StatelessWidget {
  final BYCCategoryModel _category;
  BYCHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12.px),
            gradient:
            LinearGradient(
                colors: [
                  bgColor.withOpacity(0.5),
                  bgColor]
            )
        ),
        alignment: Alignment.center,
        child: Text(
          _category.title,
          style: Theme.of(context)
              .textTheme
              .display3
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(BYCMealScreen.routeName,arguments: _category);
      },
    );
  }
}