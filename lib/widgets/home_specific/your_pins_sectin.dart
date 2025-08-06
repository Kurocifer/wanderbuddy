// lib/widgets/home_specific/your_pins_section.dart

import 'package:flutter/material.dart';
import 'package:wanderbuddy/data/mock_data.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';
import 'package:wanderbuddy/widgets/home_specific/pin_card.dart';

class YourPinsSection extends StatelessWidget {
  const YourPinsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium), // 16px horizontal padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Pins',
                style: AppStyles.sectionTitle, // 20px semi-bold
              ),
              Text(
                'see all',
                style: AppStyles.bodyText2.copyWith(
                  color: AppColors.tealNormal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppDimens.paddingMedium), // 16px spacing below title

        SizedBox(
          height: 154.0, // Explicitly set height to match PinCard height
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium), // 16px horizontal padding
            itemCount: MockData.yourPins.length,
            itemBuilder: (context, index) {
              final pin = MockData.yourPins[index];
              return Padding(
                padding: EdgeInsets.only(right: AppDimens.paddingMedium), // 16px spacing between cards
                child: PinCard(pin: pin),
              );
            },
          ),
        ),
      ],
    );
  }
}
