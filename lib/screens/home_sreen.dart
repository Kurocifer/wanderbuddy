import 'package:flutter/material.dart';
import 'package:wanderbuddy/widgets/home_specific/category_filter_section.dart';
import 'package:wanderbuddy/widgets/home_specific/home_header_section.dart';
import 'package:wanderbuddy/widgets/home_specific/shared_feed_section.dart';
import 'package:wanderbuddy/widgets/home_specific/your_pins_sectin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const SingleChildScrollView(
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
    );
  }
}
