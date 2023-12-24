import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Category> categories;
  final Function toggleLike;
  final Function isFavorite;
  final Meals mealModel;

  const TabsScreen(
      {Key? key,
      required this.categories,
      required this.mealModel,
      required this.toggleLike,
      required this.isFavorite})
      : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _tabIndex = 0;
  List<Map<String, dynamic>> _pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      {
        'page': CategoriesScreen(
          categories: widget.categories,
          meals: widget.mealModel.list,
        ),
        'title': "Ovqatlar menyusi"
      },
      {
        'page': FavoriteScreen(
          favorites: widget.mealModel.favorites,
          toggleLike: widget.toggleLike,
          isFavorite: widget.isFavorite,
        ),
        'title': 'Sevimli ovqatlar'
      }
    ];
  }

  void _changeTab(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_pages[_tabIndex]['title']),
        ),
        body: _pages[_tabIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _tabIndex,
          onTap: _changeTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "Barchasi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Sevimlilar",
            )
          ],
        ));
  }
}
