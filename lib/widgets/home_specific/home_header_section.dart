// lib/widgets/home_specific/home_header_section.dart

import 'package:flutter/material.dart';
import 'package:wanderbuddy/data/mock_data.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';


class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppDimens.marginLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile Picture
                  Container(
                    width: AppDimens.profilePictureSize,
                    height: AppDimens.profilePictureSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        // Use AssetImage for local assets
                        image: AssetImage(MockData.maryProfilePic),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: AppDimens.paddingMedium),
                  // Greeting Text
                  Text(
                    'Hi, ',
                    style: AppStyles.headline2.copyWith(fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Mary',
                    style: AppStyles.headline2,
                  ),
                ],
              ),
              // Notification Bell Icon
              Icon(
                Icons.notifications_active_outlined,
                size: AppDimens.iconSizeMedium,
                color: AppColors.primaryText,
              ),
            ],
          ),
          SizedBox(height: AppDimens.marginLarge),

          // Search Bar
          Container(
            height: AppDimens.searchBarHeight,
            decoration: BoxDecoration(
              color: AppColors.blueNormal,
              borderRadius: BorderRadius.circular(AppDimens.borderRadiusExtraLarge),
            ),
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: AppDimens.iconSizeMedium,
                  color: AppColors.secondaryText,
                ),
                SizedBox(width: AppDimens.paddingSmall),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: AppStyles.searchPlaceholder,
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: AppStyles.bodyText1,
                  ),
                ),
                Icon(
                  Icons.filter_list,
                  size: AppDimens.iconSizeMedium,
                  color: AppColors.secondaryText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
