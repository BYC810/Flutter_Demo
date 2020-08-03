import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/ui/shared/size_fit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:BYCDelicacy/core/extension/extension_int.dart';

class BYCDetailContent extends StatelessWidget {
  final BYCMealModel _meal;

  BYCDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: BYCSizeFit.screenHeight * 10,//BYCSizeFit.screenHeight * 10（极端写的，这样感觉Container高度还是一屏） 其实高度大于等于一屏就可以达到，内容没有占满一屏的时候，也可以在一屏内滑动可见。
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 60.px),//不管上面的Container的height多高始终是对Column底部的的padding。
        child: Column(//Container.height <= 一屏的情况下 正常的column处理
          // ，Container.height > 一屏的情况下 column的高度始终是一屏高或者说Container的高度始终是一屏高，
          // 这也就解释了padding为什么在Container.height > 一屏的情况下padding看起来和Container.height == 一屏的情况下一样。
          children: <Widget>[
            buildBannerImage(),
            buildTitle(context, "制作材料"),
            buildMakeMaterial(context),
            buildTitle(context, "制作步骤"),
            buildMakeSteps(),
          ],
        ),
      ),
    );
  }

  Widget buildBannerImage() {
    return Container(
      child: Image.network(_meal.imageUrl),
      width: double.infinity,
    );
  }

  Widget buildMakeMaterial(BuildContext context) {
    return buildContent(
        child: ListView.builder(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _meal.ingredients.length,
            itemBuilder: (ctx, index) {
              return Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.px, horizontal: 10.px),
                    child: Text(_meal.ingredients[index])),
              );
            }));
  }

  Widget buildMakeSteps() {
    return buildContent(
        child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    "#${index + 1}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(_meal.steps[index]),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: _meal.steps.length));
  }

  Widget buildTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.px),
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .display3
              .copyWith(fontWeight: FontWeight.bold)),
    );
  }

  Widget buildContent({Widget child}) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.px)),
        width: BYCSizeFit.screenWidth - 30.px,
        padding: EdgeInsets.all(8),
        child: child);
  }
}
