import 'package:flutter/material.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {


  // List of navigation bar items
  final List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home_outlined, 'label': 'Home'},
    {'icon': Icons.image_outlined, 'label': 'Gallery'},
    {'icon': Icons.location_on_outlined, 'label': 'Map'},
    {'icon': Icons.chat_bubble_outline, 'label': 'Chat'},
    {'icon': Icons.person_outlined, 'label': 'You'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.navBarHeight,
      color: AppColors.blueLightBackground,
      child: Padding(
        padding: EdgeInsets.only(
          top: AppDimens.navBarTopPadding,
          left: AppDimens.navBarHorizontalPadding,
          right: AppDimens.navBarHorizontalPadding,
          bottom: AppDimens.navBarTopPadding
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _navItems.asMap().entries.map((entry) {
            int index = entry.key;
            Map<String, dynamic> item = entry.value;
            bool isSelected = index == widget.selectedIndex;

            return GestureDetector(
              onTap: () {
                widget.onItemSelected(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                height: AppDimens.navBarContentHeight,
                width: isSelected
                    ? AppDimens.navBarSelectedPillWidth
                    : AppDimens.iconSizeMedium + (AppDimens.navBarItemHorizontalPadding * 2),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.tealNormal : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppDimens.navBarSelectedPillRadius),
                ),
                padding: isSelected
                    ? EdgeInsets.symmetric(
                        vertical: AppDimens.navBarItemVerticalPadding,
                        horizontal: AppDimens.navBarItemHorizontalPadding,
                      )
                    : EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'],
                      size: AppDimens.iconSizeMedium,
                      color: isSelected ? AppColors.white : Colors.grey,
                    ),
                    if (isSelected) ...[
                      SizedBox(width: AppDimens.navBarItemIconTextGap),
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
