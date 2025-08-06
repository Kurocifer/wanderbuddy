import 'package:flutter/material.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/widgets/common/bottom_nav_bar.dart';
import 'package:wanderbuddy/widgets/home_specific/category_filter_section.dart';
import 'package:wanderbuddy/widgets/home_specific/home_header_section.dart';
import 'package:wanderbuddy/widgets/home_specific/shared_feed_section.dart';
import 'package:wanderbuddy/widgets/home_specific/your_pins_sectin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeaderSection(),
            SizedBox(height: 20.0),
            CategoryFilterSection(),
            SizedBox(height: 30.0),
            YourPinsSection(),
            SizedBox(height: 30.0),
            SharedFeedSection(),
            SizedBox(height: 30.0),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      // Add the FloatingActionButton here
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // No action for static page, but this is where it would go
        },
        backgroundColor: AppColors.tealNormal, // Use our defined teal color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge), // Match card radius or adjust
        ),
        child: Icon(
          Icons.add,
          size: AppDimens.iconSizeLarge, // Use a large icon size
          color: AppColors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position it at the end (bottom right)
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WonderBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
