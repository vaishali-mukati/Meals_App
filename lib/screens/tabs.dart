import 'package:flutter/material.dart';
import 'package:meals_app_2/modals/meals.dart';
import 'package:meals_app_2/screens/categories.dart';
import 'package:meals_app_2/screens/filters.dart';
import 'package:meals_app_2/screens/meals_data.dart';
import 'package:meals_app_2/widget/main_drawer.dart';

class TabsScreen extends StatefulWidget{
  const TabsScreen({super.key,});

  State<TabsScreen> createState(){
         return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen>{
  int _selectedPageIndex =0;
  final List<Meal> _favoriteMeal = [];

   void _showInfoMessage(String message){
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message),
        )
      );
   }

  void _selectPage(int index){
     setState(() {
       _selectedPageIndex = index;
     });
}

  void _toggleMealFavoriteStatus(Meal meal){
    final isExisting = _favoriteMeal.contains(meal);

    if(isExisting) {
      setState(() {
        _favoriteMeal.remove(meal);
      });
      _showInfoMessage('Meal is no longer favorite.');
    }
      else{
        setState(() {
          _favoriteMeal.add(meal);
        });
      _showInfoMessage('Marked as a favorite!');
    }
  }
   void _setScreen(String identifier){
     Navigator.of(context).pop();
    if(identifier == 'filters'){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>const  FilterScreen()));
    }
   }

  @override
  Widget build(BuildContext context) {
    Widget activePage =  CategoryScreen(onToggleFavorite: _toggleMealFavoriteStatus,);
     var  activePageTitle = " Categories";

    if(_selectedPageIndex == 1){
        activePage =   MealsScreen(
          meals:_favoriteMeal,
          onToggleFavorite: _toggleMealFavoriteStatus,);
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