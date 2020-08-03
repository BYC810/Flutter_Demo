import 'package:BYCDelicacy/core/extension/extension_int.dart';
import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:BYCDelicacy/core/services/json_parse.dart';
import 'package:flutter/material.dart';

import 'home_category_item.dart';

class BYCHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BYCCategoryModel>>(
        future: BYCJsonParse.getCategoryData(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator()
            );
          }
          if(snapshot.error != null) {
            return Center(
              child: Text("请求失败"),
            );
          }

          final categories = snapshot.data;

          return GridView.builder(
            padding: EdgeInsets.all(20.px),
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.px,
                mainAxisSpacing: 20.px,
                childAspectRatio: 1.5),
            itemBuilder: (context, index) {
              final bgColor = categories[index].cColor;

              return BYCHomeCategoryItem(categories[index]);
            },
          );
        });
  }
}
