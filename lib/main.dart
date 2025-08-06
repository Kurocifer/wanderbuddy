// lib/main.dart

import 'package:flutter/material.dart';
import 'package:wanderbuddy/widgets/common/bottom_nav_bar.dart';
import 'package:wanderbuddy/widgets/home_specific/category_filter_section.dart';
import 'package:wanderbuddy/widgets/home_specific/home_header_section.dart';
import 'package:wanderbuddy/widgets/home_specific/your_pins_sectin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView( // Wrap the entire body in SingleChildScrollView for vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to start
          children: [
            HomeHeaderSection(), // Our header section
            SizedBox(height: 20.0), // Spacing between header and category filters
            CategoryFilterSection(), // Our category filter section
            SizedBox(height: 30.0), // Spacing between category filters and Your Pins (inferred from design)
            YourPinsSection(), // Our new "Your Pins" section
            SizedBox(height: 30.0), // Spacing below Your Pins (placeholder)
            // Placeholder for other content that will go below
            Center(
              child: Text('Shared with you section coming soon...'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(), // Our custom bottom navigation bar
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
