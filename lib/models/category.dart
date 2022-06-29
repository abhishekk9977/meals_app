import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  final String ImageUrl;
  const Category(
      {required this.id,
      this.color = Colors.orange,
      required this.title,
      required this.ImageUrl});
}
