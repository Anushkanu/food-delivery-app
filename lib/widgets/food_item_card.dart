// widgets/food_item_card.dart
import 'package:flutter/material.dart';
import '../models/food_item_model.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;

  const FoodItemCard({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              foodItem.imageUrl ?? 'assets/images/default_image.png', // Replace with your default image path
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              foodItem.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            
            const SizedBox(height: 8),
            Text(
              '\$${foodItem.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle Add to Cart functionality
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
