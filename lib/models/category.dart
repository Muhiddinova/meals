
class Category {
  final String id;
  final String  title;
  final String imageUrl;
  
  const Category({
    required this.id,
    required this.title,
    required this.imageUrl
});
  
}
class Categories{
   final List<Category> _list = [
  const Category(id: 'c1', title: 'Fast Food', imageUrl: 'assets/images/fastFodd.jpg'),
    const Category(id: 'c2', title: 'Milliy taomlar', imageUrl: 'assets/images/palov.jpg'),
    const Category(id: 'c3', title: 'Italiya taomlari', imageUrl: 'assets/images/indiaMeals.jpg'),
    Category(id: 'c4', title: 'Fransiya taomlari', imageUrl: 'assets/images/business.jpg'),
    Category(id: 'c5', title: 'Ichimliklar', imageUrl: 'assets/images/cocacola.jpg'),
    Category(id: 'c6', title: 'Salatlar', imageUrl: 'assets/images/salad.jpg')

  ];
  List<Category> get list{
    return _list;

  }
}