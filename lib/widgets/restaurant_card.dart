import 'package:flutter/material.dart';
import '../models/restaurant_model.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback onTap; // Callback for handling taps

  const RestaurantCard({
    super.key,
    required this.restaurant,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the callback when tapped
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(restaurant.name),
          subtitle: Text('Rating: ${restaurant.rating}'),
        ),
      ),
    );
  }
}
