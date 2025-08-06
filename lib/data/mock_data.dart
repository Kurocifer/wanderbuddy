import 'package:flutter/material.dart';
import 'package:wanderbuddy/models/categrory_models.dart';
import 'package:wanderbuddy/models/pin_model.dart';

class MockData {
  static const String _baseImageDirectory = 'assets/images';
  // --- Profile Images ---
  static const String maryProfilePic = '$_baseImageDirectory/mary_profile_picture.png';
  static const String beachGuyProfilePic = '$_baseImageDirectory/beach_guy_profile_picture.png';
  static const String concertGuyProfilePic = '$_baseImageDirectory/concert_guy_profile_picture.png';
  static const String noodlesGirlsProfilePic = '$_baseImageDirectory/noodles_girl_profile_picture.png';

  // --- Dummy Image URLs for Pins ---
  // These are placeholder images. In a real app, you'd use your assets or network images.
  static const String pancakes = '$_baseImageDirectory/panckas.jpg';
  static const String burgerAndFries = '$_baseImageDirectory/burger_and_fries.jpg';
  static const String concert = '$_baseImageDirectory/concert.jpg';
  static const String bowlOfNoodles = '$_baseImageDirectory/bowl_of_noodles.jpg';
  static const String beach = '$_baseImageDirectory/beach.jpg';


  // --- Mock Categories ---
  static List<Category> categories = [
    Category(name: 'Food', icon: Icons.restaurant, isSelected: true), // Food is selected in the design
    Category(name: 'Music', icon: Icons.music_note),
    Category(name: 'Scenery', icon: Icons.landscape),
    Category(name: 'Travel', icon: Icons.flight),
    Category(name: 'Art', icon: Icons.palette),
    Category(name: 'Fashion', icon: Icons.shopping_bag),
  ];

  // --- Mock "Your Pins" Data ---
  static List<Pin> yourPins = [
    Pin(
      imageUrl: pancakes,
      title: 'Lorem ipsum dolor',
      likes: '5k',
      location: 'Nylon, Bastos',
      price: '5,000frs',
    ),
    Pin(
      imageUrl: burgerAndFries,
      title: 'Lorem ipsum dolor',
      likes: '4.5k',
      location: 'Douala, Cameroon',
      price: '7,500frs',
    ),
    Pin(
      imageUrl: concert,
      title: 'Concert Night',
      likes: '8k',
      location: 'Yaounde, Cameroon',
      price: '10,000frs',
    ),
    Pin(
      imageUrl: bowlOfNoodles,
      title: 'Delicious Noodles',
      likes: '6.2k',
      location: 'Limbe, Cameroon',
      price: '4,000frs',
    ),
  ];

  // --- Mock "Shared with you" Data ---
  static List<Pin> sharedPins = [
    Pin(
      imageUrl: beach,
      title: 'Lorem ipsum dolor',
      likes: '5k',
      location: 'Nylon, Bastos',
      price: '5,000frs',
      sharedByProfileImageUrl: beachGuyProfilePic,
      sharedByName: 'Lorem dolor',
    ),
    Pin(
      imageUrl: concert,
      title: 'Lorem ipsum dolor',
      likes: '5k',
      location: 'Nylon, Bastos',
      price: '5,000frs',
      sharedByProfileImageUrl: concertGuyProfilePic,
      sharedByName: 'Lorem dolor',
    ),
    Pin(
      imageUrl: bowlOfNoodles,
      title: 'Lorem ipsum dolor',
      likes: '5k',
      location: 'Nylon, Bastos',
      price: '5,000frs',
      sharedByProfileImageUrl: noodlesGirlsProfilePic,
      sharedByName: 'Lorem dolor',
    ),
    Pin(
      imageUrl: pancakes,
      title: 'Lorem ipsum dolor',
      likes: '5k',
      location: 'Nylon, Bastos',
      price: '5,000frs',
      sharedByName: 'Lorem dolor',
    ),
  ];
}
