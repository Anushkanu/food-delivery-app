import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/food_menu_screen.dart'; // Import for FoodMenuScreen
import 'screens/profile_screen.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/food-menu': (context) => const FoodMenuScreen(), // Correctly point to FoodMenuScreen
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
