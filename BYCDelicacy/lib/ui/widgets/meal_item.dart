import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/viewmodel/favor_view_model.dart';
import 'package:BYCDelicacy/ui/pages/detail/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:BYCDelicacy/core/extension/extension_int.dart';
import 'package:provider/provider.dart';

import 'operation_item.dart';

class BYCMealItem extends StatelessWidget {
  final BYCMealModel _meal;

  BYCMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.px)),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo(),
          ],
        ),
      ),
      onTap: (){
      Navigator.of(context).pushNamed(BYCDetailScreen.routeName, arguments: this._meal);
    }
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.px),
            topRight: Radius.circular(12.px),
          ),
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 250.px,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(6.px)),
            child: Text(
              _meal.title,
              style: Theme.of(context)
                  .textTheme
                  .display3
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        BYCOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
        BYCOperationItem(Icon(Icons.restaurant), _meal.complexStr),
        buildFavorItem()
      ],
    );
  }


  Widget buildFavorItem() {
    return Consumer<BYCFavorViewModel>(builder: (ctx,favorVM,child) {
      final iconData =
      favorVM.isFavor(_meal) ? Icons.favorite : Icons.favorite_border;
      final favorColor =
      favorVM.isFavor(_meal) ? Colors.red : Colors.black;
      final title =
      favorVM.isFavor(_meal) ? "收藏" : "未收藏";
      return GestureDetector(
          child: BYCOperationItem(Icon(iconData,color: favorColor), title,textColor: favorColor),
          onTap: () {
            favorVM.handleMeal(_meal);
          }
      );
    }
    );
  }
}
