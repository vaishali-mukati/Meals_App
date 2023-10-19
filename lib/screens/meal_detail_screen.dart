import 'package:flutter/material.dart';
import 'package:meals_app_2/modals/meals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_2/provider/filter_provider.dart';

class MealDetailScreen extends ConsumerWidget{
  const MealDetailScreen({super.key,required this.meal,});

  final Meal meal;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
       return Scaffold(
                appBar:AppBar(
                  title: Text(meal.title),
                  actions: [
                    IconButton(
                        onPressed: (){
                          final wasAdded = ref.read(favoriteMealProvider.notifier)
                              .toggleMealFavoriteMealStatus(meal);
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(wasAdded ? 'Meal added as a favorite':'Meal removed.')
                              )
                          );
                        },
                        icon:const Icon(Icons.star),
                    ),
                  ],
                ),
                body:SingleChildScrollView(
                    child:Column(children:[
                      Image.network(
                           meal.imageUrl,
                           height: 200,
                           width:double.infinity,
                           fit:  BoxFit.cover,
                  ),
                       const SizedBox(height: 14),
                        Text('Ingredients',style:Theme.of(context).textTheme.titleLarge!.copyWith(
                         color:Theme.of(context).colorScheme.primary,
                         fontWeight:FontWeight.bold,
                           ),),
                        const SizedBox(height: 14),
                        for(final ingredient in meal.ingredients)
                          Text(ingredient,style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color:Theme.of(context).colorScheme.onBackground,
                          ),),
                        const SizedBox(height: 14),
                        Text('Steps',style:Theme.of(context).textTheme.titleLarge!.copyWith(
                          color:Theme.of(context).colorScheme.primary,
                          fontWeight:FontWeight.bold,
                        ),),
                      const SizedBox(height: 14),

                          for(final step in meal.steps)
                           Padding(
                               padding:const EdgeInsets.symmetric(
                               horizontal: 6,
                               vertical: 1,
                               ),
                             child:Text(step,
                                textAlign: TextAlign.center,
                                style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color:Theme.of(context).colorScheme.onBackground,
                              ),
                             ),
                          ),
                   ],
                 ),
                ),
      );
  }
}