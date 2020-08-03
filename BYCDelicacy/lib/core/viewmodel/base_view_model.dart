import 'package:BYCDelicacy/core/model/meal_model.dart';
import 'package:BYCDelicacy/core/viewmodel/filter_view_model.dart';
import 'package:flutter/cupertino.dart';

class BaseMealViewModel extends ChangeNotifier {

  List<BYCMealModel> _meals = [];

  BYCFilterViewModel _filterVM;

  void updateFilters(BYCFilterViewModel filterVM) {
    _filterVM = filterVM;
  }

  List<BYCMealModel> get meals {
    return _meals;
    return _meals.where((meal) {
      if(_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if(_filterVM.isLactoseFree && !meal.isLactoseFree) return false;
      if(_filterVM.isVegetarian && !meal.isVegetarian) return false;
      if(_filterVM.isVegan && !meal.isVegan) return false;
      return true;
    }).toList();
  }

  List<BYCMealModel> get originMeals {
    return _meals;
  }

  set meals(List<BYCMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}