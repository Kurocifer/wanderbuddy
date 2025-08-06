import 'package:flutter/material.dart';
import 'package:wanderbuddy/data/mock_data.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';


class CategoryFilterSection extends StatelessWidget {
  const CategoryFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium),
        itemCount: MockData.categories.length,
        itemBuilder: (context, index) {
          final category = MockData.categories[index];
          final isSelected = category.isSelected;

          return Padding(
            padding: const EdgeInsets.only(right: AppDimens.paddingSmall),
            child: Container(
              height: 46.0,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.tealNormal : AppColors.blueNormal,
                borderRadius: BorderRadius.circular(AppDimens.borderRadiusExtraLarge),
              ),
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    category.icon,
                    size: AppDimens.iconSizeMedium,
                    color: isSelected ? AppColors.white : AppColors.primaryText, // White for selected, dark for unselected
                  ),
                  const SizedBox(width: AppDimens.paddingSmall),
                  Text(
                    category.name,
                    style: AppStyles.bodyText1.copyWith(
                      color: isSelected ? AppColors.white : AppColors.primaryText,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal, // Slightly bolder for selected
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
