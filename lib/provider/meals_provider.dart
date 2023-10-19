import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_2/data/dummy_data.dart';

  final mealsporvider = Provider((ref){
     return dummyMeals;
  });
