// models/food_item_model.dart
class FoodItem {
  final String name;
  final String description;
  final double price;
  final String? imageUrl; // Optional image URL

  const FoodItem({
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
  });
}
