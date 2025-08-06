// lib/widgets/home_specific/shared_item_card.dart

import 'package:flutter/material.dart';
import 'package:wanderbuddy/models/pin_model.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';

class SharedItemCard extends StatelessWidget {
  final Pin pin;

  const SharedItemCard({super.key, required this.pin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppDimens.paddingMedium),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusLarge),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info & Download Icon
          Padding(
            padding: const EdgeInsets.all(AppDimens.paddingMedium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // User Profile Picture
                    Container(
                      width: AppDimens.profilePictureSize,
                      height: AppDimens.profilePictureSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: pin.sharedByProfileImageUrl != null
                            ? DecorationImage(
                                image: AssetImage(pin.sharedByProfileImageUrl!),
                                fit: BoxFit.cover,
                              )
                            : null,
                        color: pin.sharedByProfileImageUrl == null ? AppColors.blueNormal : null,
                      ),
                      child: pin.sharedByProfileImageUrl == null
                          ? Center(
                              child: Icon(
                                Icons.person,
                                size: AppDimens.iconSizeMedium,
                                color: AppColors.secondaryText,
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(width: AppDimens.paddingSmall),
                    Text(
                      pin.sharedByName ?? 'Unknown User',
                      style: AppStyles.bodyText1.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Icon(
                  Icons.download,
                  size: AppDimens.iconSizeMedium,
                  color: AppColors.secondaryText,
                ),
              ],
            ),
          ),

          // Main Image with FAB Overlay and 10px border radius
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    pin.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: AppColors.blueNormal,
                      child: Center(
                        child: Icon(
                          Icons.broken_image,
                          color: AppColors.secondaryText,
                          size: AppDimens.iconSizeLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Floating Action Button (FAB) - still handled by Scaffold
            ],
          ),

          // Title, Likes, Location, Price
          Padding(
            padding: const EdgeInsets.all(AppDimens.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pin.title,
                  style: AppStyles.sectionTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppDimens.paddingSmall),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_half, // Retained your change to star_half
                          size: AppDimens.iconSizeSmall,
                          color: AppColors.orange, // Reverted to AppColors.yellow
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          pin.likes,
                          style: AppStyles.caption.copyWith(color: AppColors.secondaryText),
                        ),
                        const SizedBox(width: AppDimens.paddingSmall),
                        Icon(
                          Icons.location_on,
                          size: AppDimens.iconSizeSmall,
                          color: AppColors.secondaryText,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          pin.location,
                          style: AppStyles.caption.copyWith(color: AppColors.secondaryText),
                        ),
                      ],
                    ),
                    // Price Button
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimens.paddingSmall,
                        vertical: AppDimens.paddingSmall / 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall),
                      ),
                      child: Text(
                        pin.price,
                        style: AppStyles.caption.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
