class Meal {
  final String id;
  final String title;
  final List<String> imageUrls;
  final String description;
  final List<String> ingredients;
  final int preparingTime;
  final double price;
  final String categoryId;

  Meal({
    required this.id,
    required this.title,
    required this.imageUrls,
    required this.description,
    required this.ingredients,
    required this.preparingTime,
    required this.price,
    required this.categoryId,
  });
}

class Meals {
  List<Meal> _list = [
    Meal(
      id: "m1",
      title: 'Lavash',
      imageUrls: [
        'assets/images/lavash.jpg',
        'assets/images/lavash2.jpg',
        'assets/images/lavash3.jpg'
      ],
      description: "Ajoyib Lavash",
      ingredients: ["go'sht", "pomidor", "bodring", "chips"],
      preparingTime: 10,
      price: 12,
      categoryId: "c1",
    ),
    Meal(
      id: "m2",
      title: 'Burger',
      imageUrls: [
        'assets/images/fastFodd.jpg',
        'assets/images/fastFodd.jpg',
        'assets/images/fastFodd.jpg'
      ],
      description: "Ajoyib Burger",
      ingredients: ["go'sht", "pomidor", "bodring", "pishloq"],
      preparingTime: 14,
      price: 14,
      categoryId: "c1",
    ),
    Meal(
      id: "m3",
      title: 'Palov',
      imageUrls: [
        'assets/images/palov.jpg',
        'assets/images/palov.jpg',
        'assets/images/palov.jpg',
      ],
      description: "Ajoyib Palov",
      ingredients: ["go'sht", "piyoz", "sabzi", "noxot"],
      preparingTime: 10,
      price: 20,
      categoryId: "c2",
    ),
    Meal(
      id: "m4",
      title: 'Somsa',
      imageUrls: [
        'assets/images/samsa.jpg',
        'assets/images/samsa2.jpg',
        'assets/images/samsa3.jpg',
      ],
      description: "Ajoyib Somsa",
      ingredients: ["go'sht", "piyoz", "pishloq", "yog\'"],
      preparingTime: 30,
      price: 9,
      categoryId: "c2",
    ),
    Meal(
      id: "m5",
      title: 'Pizza',
      imageUrls: [
        'assets/images/pizza.jpg',
        'assets/images/pizza.jpg',
        'assets/images/pizza.jpg',
      ],
      description: "Ajoyib Pizza",
      ingredients: ["tovuq go'shti", "pomidor", "bodring", "pishloq", "sous"],
      preparingTime: 10,
      price: 17,
      categoryId: "c3",
    ),
    Meal(
      id: "m6",
      title: 'Breakfest',
      imageUrls: [
        'assets/images/business.jpg',
        'assets/images/business.jpg',
        'assets/images/business.jpg',
      ],
      description: "Ajoyib Taom",
      ingredients: [
        "go'sht",
        "guruch",
        "bulg'or qalampir",
      ],
      preparingTime: 10,
      price: 12,
      categoryId: "c3",
    ),
    Meal(
      id: "m7",
      title: 'Coca Cola',
      imageUrls: [
        'assets/images/cocacola.jpg',
        'assets/images/dena.jpg',
      ],
      description: "Ajoyib Ichimlik",
      ingredients: ["shakarsiz"],
      preparingTime: 1,
      price: 12,
      categoryId: "c5",
    ),
    Meal(
      id: "m8",
      title: 'Dena',
      imageUrls: [
        'assets/images/dena.jpg',
        'assets/images/dena.jpg',
        'assets/images/dena.jpg'
      ],
      description: "Ajoyib Ichimlik",
      ingredients: ["olmali"],
      preparingTime: 10,
      price: 12,
      categoryId: "c5",
    ),
    Meal(
      id: "m8",
      title: 'Salat',
      imageUrls: [
        'assets/images/salad.jpg',
        'assets/images/salad.jpg',
        'assets/images/salad.jpg',
      ],
      description: "Ajoyib Salat",
      ingredients: ["go'sht", "pomidor", "bodring", "moyanez"],
      preparingTime: 10,
      price: 12,
      categoryId: "c6",
    ),
  ];
  List<Meal> _favorites = [];

  List<Meal> get favorites {
    return _favorites;
  }

  List<Meal> get list {
    return _list;
  }

  void toggleLike(String mealId) {
    final mealIndex = _favorites.indexWhere((meal) => meal.id == mealId);
    if(mealIndex<0){
      _favorites.add(list.firstWhere((meal) => meal.id == mealId));

    } else{
      _favorites.removeWhere((meal) => meal.id == mealId);
    }
  }
}
