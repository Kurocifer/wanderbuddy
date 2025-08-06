import 'package:flutter/material.dart';
import 'package:wanderbuddy/widgets/home_specific/home_header_section.dart';

// Placeholder for our home screen, will be defined later
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column( // Use a Column to stack the header and future content
        children: [
          HomeHeaderSection(), // Our new header section
          // Placeholder for other content that will go below the header
          Expanded(
            child: Center(
              child: Text('More content coming soon...'),
            ),
          ),
        ],
      ),
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
