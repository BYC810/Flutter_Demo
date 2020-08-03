import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/services/http_request.dart';

class BYCMealRequest {
  static Future<List<BYCMealModel>> getMealData() async {
    final url = "/meal";
    final result = await HttpRequest.requst(url);

    final mealArray = result["meal"];
    List<BYCMealModel> meals = [];
    for (var json in mealArray) {
      meals.add(BYCMealModel.fromJson(json));
    }
    return meals;
  }
}