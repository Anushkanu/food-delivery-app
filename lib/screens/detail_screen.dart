import 'package:flutter/material.dart';
import '../models/food_item_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.foodItem}); // 'key' is now a super parameter

  final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(foodItem.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            foodItem.imageUrl ?? 'assets/images/default_image.png', // replace with your default image path
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem.name,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  '\$${foodItem.price.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 8),
                Text(foodItem.description),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle Add to Cart functionality
                  },
                  child: const Text("Add to Cart"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
