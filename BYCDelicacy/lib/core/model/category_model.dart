import 'package:flutter/cupertino.dart';

class BYCCategoryModel {
  String id;
  String title;
  String color;
  Color cColor;

  BYCCategoryModel(this.id, this.title, this.color);

  BYCCategoryModel.fromJson(Map<String,dynamic> json) {
    id = json["id"];
    title = json["title"];
    color = json["color"];
    final colorInt = int.parse(color, radix: 16);

    cColor = Color(colorInt | 0xFF000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String,dynamic> data = Map<String,dynamic>();
    data["id"] = id;
    data["title"] = title;
    data["color"] = color;
    return data;
  }
}