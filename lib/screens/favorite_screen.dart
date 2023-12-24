import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';


class FavoriteScreen extends StatefulWidget {
  final List<Meal> favorites;
  final Function toggleLike;
  final Function isFavorite;

  const FavoriteScreen({Key? key,
    required this.favorites,
    required this.toggleLike,
    required this.isFavorite})
      : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  void _toggleLike(String mealId) {
    setState(() {
      widget.toggleLike(mealId);
    });
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: const Text("Sevimli taom o'chirildi!"),
          action: SnackBarAction(label: 'BEKOR QILISH', onPressed: () {},),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.favorites.length > 0 ?
    ListView.builder(
        itemCount: widget.favorites.length,
        itemBuilder: (ctx, index) =>
            MealItem(
                meal: widget.favorites[index],
                toggleLike: _toggleLike,
                isFavorite: widget.isFavorite))
        : const Center(
      child: Text("Sevimli ovqatlar mavjud emas"),
    );
  }
}
