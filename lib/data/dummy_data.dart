import 'package:flutter/material.dart';
import 'package:meals_app_2/modals/category.dart';
import 'package:meals_app_2/modals/meals.dart';

const availableCategories = [

     Category(
         id: 'c1',
         title:'Italian',
         color: Colors.purple,
     ),
     Category(
      id: 'c2',
      title:'Quick & Easy',
      color: Colors.red,
     ),

    Category(
      id: 'c3',
      title:'Hamburgers',
      color: Colors.orange,
    ),
    Category(
      id: 'c4',
      title:'German',
      color: Colors.amber,
    ),
    Category(
      id: 'c5',
      title:'Light & lovely',
      color: Colors.blue,
   ),
    Category(
      id: 'c6',
      title:'Exotic',
      color: Colors.green,
    ),
    Category(
      id: 'c7',
      title:'Breakfast',
      color: Colors.lightBlue,
    ),
   Category(
     id: 'c8',
     title:'Asian',
     color: Colors.lightGreen,
   ),
   Category(
     id: 'c9',
     title:'French',
     color: Colors.pink,
  ),
   Category(
     id: 'c10',
     title:'Summer',
     color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
      id:'m1',
      categories:[
        'c1',
        'c2',
      ],
      title: 'Spaghetti with tometo sauce',
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      imageUrl:'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      duration:20,
      ingredients:[
        '4 Tomatoes',
        '1 Table Spoon of Oliv Oil',
        '1 Onion',
        '250 Spaghetti',
        'spices',
        'Cheese(Optional)',
      ],
      steps: [
        'Cut the tomatoes and the  Onion into small pieces',
        'Boil some water -add salt to it Once it boils ',
        'put the Spaghetti into boiling water',
        'In the meantime,heaten up some Oliv oil and cut the Onion',
        'After 2 minutes , add the tomato pieces ,salt and your other ingredients',
        'The sauce will be done Once the spaghetti are.',
        'Feel free to add some cheese on the top of the finished dish',
      ],
      isGlutenFree: false,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true,
  ),
  
  Meal(
      id: 'm2',
      categories: [
        'c2'
      ],
      title: 'Toast Hawaii',
      complexity: Complexity.simple,
      affordability: Affordability.affordable,
      imageUrl:'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      duration: 10,
      ingredients: [
        '1 Slice White Bread ',
        '1 Slice Ham',
        '1 Slice Pineapple',
        '1 2 Slices of cheese ',
        'Butter',
      ],
      steps: [
        'Butter One side of the white bread',
        'Layer ham ,the Pineapple and  cheese on the White bread ',
        'Bake the Toast for round about 10 minutes in the Oven at 200C',
      ],
      isGlutenFree: false ,
      isLactoseFree: false,
      isVegan:false,
      isVegetarian:false,
  ),

  Meal(
      id: 'm3',
      categories:[
         'c2',
          'c3',
      ],
      title:'Classic Hamburger',
      complexity: Complexity.simple,
      affordability:Affordability.pricey,
      imageUrl:'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      duration: 45,
      ingredients:[
        '300g Cattle Hack',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns',
      ],
      steps: [
        'Form 2 Patties',
        'Fry the Patties for c. 4 minutes of each side',
        'Quickly fry the buns for c. 1 minute of each side',
        'Bruch buns with ketchup',
        'Server Burger With tomato Cucumber and Onion',
      ],
      isGlutenFree:false ,
      isLactoseFree:true,
      isVegan: false,
      isVegetarian:false,
  ),
  Meal(
      id:'m4',
      categories: [
        'c4'],
      title: 'Wiener Schnitzel',
      complexity:Complexity.challenging,
      affordability: Affordability.luxurious,
      imageUrl:'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      duration: 60,
      ingredients: [
        '8 veg cuttles',
        '4 eggs',
        '200g bread crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable oil',
        'Salt',
      ],
      steps: [
        ' Place the cutlets between sheets of plastic wrap, and use a heavy, flat-surfaced pan, rollling pin or meat mallet to pound the meat evenly to 1/4-inch thickness.',
        ' To bread the schnitzels',
        ' Working one at a time, dredge cutlets first in flour until the surface is completely dry.'
        'Dip in egg to coat, allow the excess to drip off for a few seconds.',
        'Immediately place meat in the pan with the hot oil. Do not crowd the pan. Cook the schnitzel in batches, if necessary. Fry the schnitzel for 2 to 3 minutes on one side, until golden brown.'
        'Turn them over once and fry an additional 2 to 3 minutes or until both sides are golden brown and the meat registers an internal temperature of 145 F. Remove from pan and allow the oil to drain off. Serve in the traditional manner with lemon slices.'

      ],
      isGlutenFree:true,
      isLactoseFree: true,
      isVegan:false,
      isVegetarian:false,
   ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
      'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
    'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

];
