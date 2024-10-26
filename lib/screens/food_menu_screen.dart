import 'package:flutter/material.dart';
import '../models/restaurant_model.dart';

class FoodMenuScreen extends StatelessWidget {
  const FoodMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the Restaurant object passed from HomeScreen
    final Restaurant restaurant = ModalRoute.of(context)!.settings.arguments as Restaurant;

    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name), // Display restaurant name
      ),
      body: Center(
        child: Text('Welcome to ${restaurant.name}!'), // Display a welcome message
      ),
    );
  }
}
