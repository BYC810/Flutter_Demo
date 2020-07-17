import 'dart:convert';
import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:flutter/services.dart';

class BYCJsonParse {
  static Future<List<BYCCategoryModel>> getCategoryData() async {
    print("123456787654321");
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    print("123456787654321jsonString=$jsonString");
    final result = json.decode(jsonString);

    print("123456787654321result=$result");

    final resultList = result["category"];
    List<BYCCategoryModel> category = [];
    for (var json in resultList) {
      category.add(BYCCategoryModel.fromJson(json));
    }
    return category;
  }
}