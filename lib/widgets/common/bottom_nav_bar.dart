import 'package:flutter/material.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0; // 0 for Home, as per requirement

  // List of navigation bar items
  final List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.image, 'label': 'Gallery'},
    {'icon': Icons.location_on, 'label': 'Map'},
    {'icon': Icons.chat, 'label': 'Chat'},
    {'icon': Icons.person, 'label': 'You'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.navBarHeight,
      // Using a light background color for the nav bar itself, inferred from design
      color: AppColors.blueLightBackground,
      child: Padding(
        padding: EdgeInsets.only(
          top: AppDimens.navBarTopPadding,
          left: AppDimens.navBarHorizontalPadding,
          right: AppDimens.navBarHorizontalPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute items evenly
          children: _navItems.asMap().entries.map((entry) {
            int index = entry.key;
            Map<String, dynamic> item = entry.value;
            bool isSelected = index == _selectedIndex;

            return GestureDetector(
              onTap: () {
                // For a static page, we just update the selected index visually.
                // No actual navigation logic is needed.
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                height: AppDimens.navBarContentHeight,
                width: isSelected
                    ? AppDimens.navBarSelectedPillWidth
                    : AppDimens.iconSizeMedium + (AppDimens.navBarItemHorizontalPadding * 2), // Width for unselected icon only
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.tealNormal : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppDimens.navBarSelectedPillRadius),
                ),
                padding: isSelected
                    ? EdgeInsets.symmetric(
                        vertical: AppDimens.navBarItemVerticalPadding,
                        horizontal: AppDimens.navBarItemHorizontalPadding,
                      )
                    : EdgeInsets.zero, // No padding for unselected icon-only state
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center content within the pill
                  children: [
                    Icon(
                      item['icon'],
                      size: AppDimens.iconSizeMedium,
                      color: isSelected ? AppColors.white : AppColors.tealNormal,
                    ),
                    if (isSelected) ...[
                      SizedBox(width: AppDimens.navBarItemIconTextGap), // Gap between icon and text
                      Text(
                        item['label'],
                        style: AppStyles.navBarSelectedLabel,
                      ),
                    ],
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
