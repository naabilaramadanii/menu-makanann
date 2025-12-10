import 'package:flutter/material.dart';
import '../models/food.dart';
import '../screens/welcome/welcome_screen.dart';
import '../screens/menu/menu_screen.dart';
import '../screens/detail/food_detail_screen.dart';

class AppRoutes {
  static const welcome = '/';
  static const menu = '/menu';
  static const detail = '/detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case menu:
        return MaterialPageRoute(builder: (_) => const MenuScreen());
      case detail:
        final args = settings.arguments;
        if (args is Food) {
          return MaterialPageRoute(
            builder: (_) => FoodDetailScreen(food: args),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Route tidak ditemukan')),
      ),
    );
  }
}
