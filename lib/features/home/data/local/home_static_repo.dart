import 'package:flutter/material.dart';

class HomestaticRepo {
  static List<BottomNavModel> bottomNav = [
    BottomNavModel(icon: Icons.home, title: "Home"),
    BottomNavModel(icon: Icons.favorite, title: "Favorite"),
    BottomNavModel(icon: Icons.shopping_bag, title: "Cart"),
    BottomNavModel(icon: Icons.person, title: "Profile"),
  ];
}

class BottomNavModel {
  final IconData? icon;
  final String? title;
  const BottomNavModel({
    this.icon,
    this.title,
  });
}
