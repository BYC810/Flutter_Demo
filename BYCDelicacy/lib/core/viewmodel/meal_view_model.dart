import 'package:BYCDelicacy/core/services/meal_request.dart';
import 'package:BYCDelicacy/core/viewmodel/base_view_model.dart';

class BYCMealViewModel extends BaseMealViewModel {
  BYCMealViewModel() {
    BYCMealRequest.getMealData().then((value){
      meals = value;
    });
  }
}