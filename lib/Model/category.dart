import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category {
  final String title;
  final String image;
  final Color bgcolor;
  final Color color;
  Category({
    required this.title,
    required this.image,
    required this.color,
    required this.bgcolor,
  });
}

List<Category> category = [
  Category(
    title: 'Fruits',
    image: 'assets/images/veg&fruit.png',
    bgcolor: Colors.green.shade50,
    color: Colors.green.shade300,
  ),
  Category(
    title: 'Beverages',
    image: 'assets/images/Bev.png',
    bgcolor: Colors.purple.shade50,
    color: Colors.purple.shade300,
  ),
  Category(
    title: 'Meat',
    image: 'assets/images/meat.png',
    bgcolor: Colors.yellow.shade50,
    color: Colors.yellow.shade300,
  ),
  Category(
    title: 'Vegetables',
    image: 'assets/images/veg&fruit.png',
    bgcolor: Colors.blue.shade50,
    color: Colors.blue.shade300,
  ),
];
