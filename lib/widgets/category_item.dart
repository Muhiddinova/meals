import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

import '../screens/category_meals_screen.dart';
 class CategoryItem extends StatelessWidget {
   final Category category;
   final List<Meal> meals;
   const CategoryItem({Key? key, required this.category,required this.meals}) : super(key: key);
 void _goToCategoryMealsScreen(BuildContext  context){
   Navigator.of(context).pushNamed(CategoryMealsScreen.routeName,arguments: {
     'categoryTitle': category.title,
     'categoryMeals' : meals,
   });
   // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>  CategoryMealsScreen(categoryName: category.title,)));
 }
   @override
   Widget build(BuildContext context) {
     return InkWell(
     onTap: () => _goToCategoryMealsScreen(context),
       child: ClipRRect(
         borderRadius: BorderRadius.circular(15),
         child: Stack(
           children: [
             Container(
                 width: double.infinity,
                 child:   Image.asset(category.imageUrl,
                   fit: BoxFit.cover, )
             ),
             Container(
               color: Colors.black.withOpacity(0.4),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(category.title, style:  const TextStyle(color: Colors.white, fontSize: 20),),
             )
           ],
         ),


       ),
     );
   }
 }
