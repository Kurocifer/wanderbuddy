// lib/main.dart

import 'package:flutter/material.dart';
import 'package:wanderbuddy/widgets/common/bottom_nav_bar.dart';
import 'package:wanderbuddy/widgets/home_specific/category_filter_section.dart';
import 'package:wanderbuddy/widgets/home_specific/home_header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeHeaderSection(),
          SizedBox(
            height: 20.0,
          ),
          CategoryFilterSection(),
          Expanded(child: Center(child: Text('loading...'))),
        ],
      ),
      bottomNavigationBar:
          CustomBottomNavBar(),
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
      title: 'WonderBuddy', // Updated app title
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
