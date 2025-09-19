import 'package:flutter/animation.dart';

class CategoryItem {
  final String title;
  final String icon;
  final VoidCallback? onTap;

  CategoryItem({required this.title, required this.icon, this.onTap});
}