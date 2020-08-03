import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/viewmodel/base_view_model.dart';

class BYCFavorViewModel extends BaseMealViewModel {
  void addMeal(BYCMealModel model) {
    originMeals.add(model);
    notifyListeners();
  }

  void removeMeal(BYCMealModel model) {
    originMeals.remove(model);
    notifyListeners();
  }

  void handleMeal(BYCMealModel model) {
    if (isFavor(model)) {
      removeMeal(model);
    } else {
      addMeal(model);
    }
  }

  bool isFavor(BYCMealModel model) {
    return originMeals.contains(model);
  }
}