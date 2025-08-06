import 'package:flutter/material.dart';
import 'package:wanderbuddy/data/mock_data.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';
import 'package:wanderbuddy/widgets/home_specific/shared_item_card.dart';

class SharedFeedSection extends StatelessWidget {
  const SharedFeedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium), // 16px horizontal padding
          child: Text(
            'Shared with you',
            style: AppStyles.sectionTitle, // 20px semi-bold
          ),
        ),
        SizedBox(height: AppDimens.paddingMedium), // 16px spacing below title

        // Using ListView.builder for vertical scrolling of shared items
        // This ListView is inside a SingleChildScrollView in main.dart,
        // so it needs to shrinkWrap and disable its own scrolling.
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(), // Disable internal scrolling
          shrinkWrap: true, // Take only as much space as its children
          itemCount: MockData.sharedPins.length,
          itemBuilder: (context, index) {
            final pin = MockData.sharedPins[index];
            return Padding(
              padding: EdgeInsets.only(bottom: AppDimens.paddingMedium), // 16px spacing between cards
              child: SharedItemCard(pin: pin),
            );
          },
        ),
      ],
    );
  }
}
