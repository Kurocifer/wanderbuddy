// lib/main.dart

import 'package:flutter/material.dart';
import 'package:wanderbuddy/screens/chat_screen.dart';
import 'package:wanderbuddy/screens/gallery_screen.dart';
import 'package:wanderbuddy/screens/home_sreen.dart';
import 'package:wanderbuddy/screens/map_screen.dart';
import 'package:wanderbuddy/screens/profile_screen.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/widgets/common/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0; // Initially select the Home tab (index 0)

  // List of screens corresponding to the navigation bar items
  final List<Widget> _pages = const [
    HomeScreen(),
    GalleryScreen(),
    MapScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WonderBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        // Display the selected page as the body
        body: _pages[_selectedIndex],
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: AppColors.tealNormal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.floatingActionButtonRaduis),
          ),
          child: Icon(
            Icons.add,
            size: AppDimens.iconSizeLarge,
            color: AppColors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
