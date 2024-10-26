import 'package:flutter/material.dart';
import '../widgets/restaurant_card.dart';
import '../models/restaurant_model.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final List<Restaurant> restaurants = [
    Restaurant(name: 'Pizza Place', rating: 4.5),
    Restaurant(name: 'Burger Joint', rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Delivery App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return RestaurantCard(
            restaurant: restaurants[index],
            onTap: () {
              // Pass the restaurant object as an argument to FoodMenuScreen
              Navigator.pushNamed(
                context,
                '/food-menu',
                arguments: restaurants[index],
              );
            },
          );
        },
      ),
    );
  }
}
