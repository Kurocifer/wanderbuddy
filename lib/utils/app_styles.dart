import 'package:flutter/material.dart';
import 'package:wanderbuddy/utils/app_colors.dart';

class AppStyles {
  // --- Headings ---
  static const TextStyle headline1 = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryText,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryText,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600, // Semi-bold
    color: AppColors.primaryText,
  );

  // --- Body Text ---
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryText,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.secondaryText,
  );

  // --- Button Text ---
  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.white,
  );

  // --- Small Text / Captions ---
  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: AppColors.secondaryText,
  );

  // --- Navigation Bar Styles ---
  static const TextStyle navBarSelectedLabel = TextStyle(
    fontSize: 14.0, // Inferred from padding and height
    fontWeight: FontWeight.w600, // Semi-bold
    color: AppColors.white,
  );

  static const Color navBarUnselectedIconColor =
      AppColors.blueDark; // From palette
}
