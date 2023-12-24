import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/category_meals_screen.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details_screen.dart';
import 'package:meals/screens/tab_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _categoryModel = Categories();

  final _mealModel = Meals();

  void _toggleLike(String mealId) {
    setState(() {
      _mealModel.toggleLike(mealId);
    });
  }

  bool _isFavorite(String mealId) {
    return _mealModel.favorites.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(
              categories: _categoryModel.list,
          mealModel: _mealModel,
          toggleLike: _toggleLike,
          isFavorite: _isFavorite,
            ),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(
              toggleLike: _toggleLike,
              isFavorite: _isFavorite,
            ),
        MealDetailsScreen.routeName: (ctx) => const MealDetailsScreen()
      },
    );
  }
}
