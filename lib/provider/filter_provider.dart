import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_2/modals/meals.dart';

class FavoriteMealNotifier extends StateNotifier<List<Meal>>{

  FavoriteMealNotifier():super([]);

bool toggleMealFavoriteMealStatus(Meal meal){
     final mealIsFavorite = state.contains(meal);

     if(mealIsFavorite){
       state = state.where((m) => m.id != meal.id).toList();
       return false;
     }else{
       state = [...state,meal];
       return true;
     }

  }
}

final favoriteMealProvider =
StateNotifierProvider<FavoriteMealNotifier,List<Meal>>((ref) {
  return FavoriteMealNotifier();
});