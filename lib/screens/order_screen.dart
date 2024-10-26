import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
   const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Screen'),
      ),
      body: const Center(
        child: Text(
          'Your orders will be displayed here.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
