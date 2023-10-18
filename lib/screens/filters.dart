import 'package:flutter/material.dart';
import 'package:meals_app_2/widget/main_drawer.dart';

class FilterScreen extends StatefulWidget{
      const FilterScreen({super.key});

      State<FilterScreen>createState(){
         return _FilterScreenState();
      }

}
class _FilterScreenState extends State<FilterScreen>{
   var _glutenFreeFilterset = false;
   var _LactoseFreeFilterset = false;
   var  _VegetarianFreeFilterset = false;
   var  _VeganFreeFilterset = false;

      @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title:const Text('Your Filters'),
          ),
        //drawer: MainDrawer(
          //onSelectScreen: (identifier){
            // if(identifier == 'meals'){
             //  Navigator.of(context).pushReplacement(MaterialPageRoute(
                 //  builder:(ctx) =>const  FilterScreen()));
             //}
          //},
        //),
        body: Column(
           children: [
           SwitchListTile(
               value: _glutenFreeFilterset,
               onChanged: (isChecked){
                 setState(() {
                   _glutenFreeFilterset = isChecked;
                 });
               },
               title: Text('Gluten-Free',
                      style:Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground
                      ),),
             subtitle: Text('Only include gluten-free meals.',
             style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground
             ),),
             activeColor: Theme.of(context).colorScheme.tertiary,
             contentPadding: const EdgeInsets.only(left: 34,right: 22),

           ),
             SwitchListTile(
               value: _LactoseFreeFilterset,
               onChanged: (isChecked){
                 setState(() {
                   _LactoseFreeFilterset = isChecked;
                 });
               },
               title: Text('Lactose-Free',
                 style:Theme.of(context).textTheme.titleLarge!.copyWith(
                     color: Theme.of(context).colorScheme.onBackground
                 ),),
               subtitle: Text('Only include lactose_free meals.',
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                     color: Theme.of(context).colorScheme.onBackground
                 ),),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
             ),
             SwitchListTile(
               value: _VegetarianFreeFilterset,
               onChanged: (isChecked){
                 setState(() {
                   _VegetarianFreeFilterset= isChecked;
                 });
               },
               title: Text('Vegetarian',
                 style:Theme.of(context).textTheme.titleLarge!.copyWith(
                     color: Theme.of(context).colorScheme.onBackground
                 ),),
               subtitle: Text('Only include vegetarian meals.',
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                     color: Theme.of(context).colorScheme.onBackground
                 ),),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
             ),
             SwitchListTile(
               value: _VeganFreeFilterset,
               onChanged: (isChecked){
                 setState(() {
                 _VeganFreeFilterset= isChecked;
                 });
               },
               title: Text('Vegan',
                 style:Theme.of(context).textTheme.titleLarge!.copyWith(
                     color: Theme.of(context).colorScheme.onBackground
                 ),),
               subtitle: Text('Only include vegan meals.',
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                     color: Theme.of(context).colorScheme.onBackground
                 ),),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
             ),
           ],
        ),
      );
  }
}