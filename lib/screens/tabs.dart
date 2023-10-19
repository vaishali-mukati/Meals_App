import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_2/modals/meals.dart';
import 'package:meals_app_2/screens/categories.dart';
import 'package:meals_app_2/screens/filters.dart';
import 'package:meals_app_2/screens/meals_data.dart';
import 'package:meals_app_2/widget/main_drawer.dart';
import 'package:meals_app_2/provider/meals_provider.dart';
import 'package:meals_app_2/provider/filter_provider.dart';

const kInitialFilters = {
     Filter.glutenFree:false,
     Filter.lactoseFree:false,
     Filter.vegetarian:false,
     Filter.vegan:false,
};

class TabsScreen extends ConsumerStatefulWidget{
  const TabsScreen({super.key,});

  ConsumerState<TabsScreen> createState(){
         return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen>{
  int _selectedPageIndex =0;

  Map<Filter,bool> _selectedFilters= kInitialFilters;



  void _selectPage(int index){
     setState(() {
       _selectedPageIndex = index;
     });
}


   void _setScreen(String identifier) async {
     Navigator.of(context).pop();
    if(identifier == 'filters'){
      final result = await Navigator.of(context).push<Map<Filter,bool>>(
          MaterialPageRoute(builder: (ctx) => FilterScreen(
            currentFilters: _selectedFilters,
          )
          )
      );
      setState(() {
        _selectedFilters = result ?? kInitialFilters;
      });

     }

   }

  @override
  Widget build(BuildContext context) {
     final meals = ref.watch(mealsporvider);
     
     final availableMeals = meals.where((meal) {
       if(_selectedFilters [Filter.glutenFree]! && !meal.isGlutenFree){
         return false;
       }

       if(_selectedFilters [Filter.lactoseFree]! && !meal.isLactoseFree){
         return false;
       }

       if(_selectedFilters [Filter.vegetarian]! && !meal.isVegetarian){
         return false;
       }

       if(_selectedFilters [Filter.vegan]! && !meal.isVegan){
         return false;
       }
       return true;
     }).toList();
    Widget activePage =  CategoryScreen(

      availableMeal: availableMeals,);
     var  activePageTitle = " Categories";

    if(_selectedPageIndex == 1){
      final favoriteMeals = ref.watch(favoriteMealProvider);
        activePage =  MealsScreen(
          meals:favoriteMeals,
         );
        activePageTitle = "Your Favorites";
    }
     return Scaffold(
          appBar: AppBar(
            title:Text(activePageTitle),
          ),
       drawer:  MainDrawer(onSelectScreen: _setScreen,),
       body:activePage,
       bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items:const [
            BottomNavigationBarItem(icon:Icon(Icons.set_meal) ,label:'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.star),label:'Favorites'),
          ],
       )
     );
  }
}