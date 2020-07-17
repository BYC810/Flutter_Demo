import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:BYCDelicacy/core/services/json_parse.dart';
import 'package:flutter/material.dart';
import 'package:BYCDelicacy/core/extension/extension_int.dart';

class BYCHomeContent extends StatefulWidget {
  @override
  _BYCHomeContentState createState() => _BYCHomeContentState();
}

class _BYCHomeContentState extends State<BYCHomeContent> {
  List<BYCCategoryModel> _category = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BYCJsonParse.getCategoryData().then((value) {
      setState(() {
        _category = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return getGridView();
  }

  GridView getGridView() {
    return GridView.builder(
    padding: EdgeInsets.all(20.px),
    itemCount: _category.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.px,
        mainAxisSpacing: 20.px,
        childAspectRatio: 1.5),
    itemBuilder: (context, index) {
      final bgColor = _category[index].cColor;

      return Container(
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
          _category[index].title,
          style: Theme.of(context)
              .textTheme
              .display3
              .copyWith(fontWeight: FontWeight.bold),
        ),
      );
    },
  );
  }
}
