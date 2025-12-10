import 'package:flutter/material.dart';
import '../../data/foods.dart';
import '../../models/food.dart';
import 'widgets/food_item_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Makanan')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final Food food = foods[index];
          return FoodItemCard(food: food);
        },
      ),
    );
  }
}
