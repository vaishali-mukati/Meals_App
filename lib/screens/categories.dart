
import 'package:flutter/material.dart';
import 'package:meals_app_2/data/dummy_data.dart';
import 'package:meals_app_2/screens/meals_data.dart';
import 'package:meals_app_2/widget/category_grid_item.dart';
import 'package:meals_app_2/modals/category.dart';


class CategoryScreen extends StatelessWidget{
      const CategoryScreen({super.key});

  void _selectCategory(BuildContext context,Category category){
    final filteredMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();

    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (ctx) =>MealsScreen(
                title:category.title,
                meals: filteredMeals) ));
  }
      @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
           title: const Text('Pick your category'),
          ),
          body: GridView(
            //padding:const  EdgeInsets.all(24),
               gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: 3/2,
                   crossAxisSpacing:20,
                   mainAxisSpacing: 20 ),
              children: [
                    for(final category in availableCategories)
                      CategoryGridItem(
                        category: category,
                      onSelectCategory: (){
                      _selectCategory(context,category);
                         }
                        ),

                        ],
                        )

        );
  }

}