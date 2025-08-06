import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon; // Using IconData for Material Icons
  final bool isSelected; // To manage the selected state for mock data.

  Category({required this.name, required this.icon, this.isSelected = false});
}
