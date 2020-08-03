import 'dart:convert';
import 'package:BYCDelicacy/core/model/category_model.dart';
import 'package:flutter/services.dart';

class BYCJsonParse {
  static Future<List<BYCCategoryModel>> getCategoryData() async {
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    final result = json.decode(jsonString);
    final resultList = result["category"];
    List<BYCCategoryModel> category = [];
    for (var json in resultList) {
      category.add(BYCCategoryModel.fromJson(json));
    }
    return category;
  }
}