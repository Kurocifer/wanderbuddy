import 'package:flutter/material.dart';
import 'package:wanderbuddy/models/pin_model.dart';
import 'package:wanderbuddy/utils/app_colors.dart';
import 'package:wanderbuddy/utils/app_dimensions.dart';
import 'package:wanderbuddy/utils/app_styles.dart';


class PinCard extends StatelessWidget {
  final Pin pin;

  const PinCard({super.key, required this.pin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.0,
      height: 154.0,
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
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              pin.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: AppColors.blueNormal, // Placeholder background on error
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

          // Gradient Overlay for Text Readability
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: const [0.5, 1.0],
                ),
              ),
            ),
          ),

          // Top-Left: Star and Likes Count Pill
          Positioned(
            top: AppDimens.paddingSmall, // 8px
            left: AppDimens.paddingSmall, // 8px
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingSmall, // 8px
                vertical: AppDimens.paddingSmall / 2, // 4px
              ),
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.4), // Semi-transparent black
                borderRadius: BorderRadius.circular(AppDimens.borderRadiusExtraLarge), // Very rounded pill
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star_half,
                    size: AppDimens.iconSizeSmall, // 18px
                    color: AppColors.orange,
                  ),
                  const SizedBox(width: 4.0), // Inferred small gap
                  Text(
                    pin.likes,
                    style: AppStyles.caption.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            ),
          ),

          // Top-Right: Location Pin Icon (standalone)
          Positioned(
            top: AppDimens.paddingSmall, // 8px
            right: AppDimens.paddingSmall, // 8px
            child: Icon(
              Icons.location_on, // Corrected icon to location pin
              size: AppDimens.iconSizeMedium, // 24px
              color: AppColors.white,
            ),
          ),

          // Content at the Bottom (Title and Location Text)
          Positioned(
            bottom: AppDimens.paddingSmall, // 8px
            left: AppDimens.paddingSmall, // 8px
            right: AppDimens.paddingSmall, // 8px
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pin.title,
                  style: AppStyles.bodyText1.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.0), // Inferred small vertical spacing

                Row(
                  children: [
                    Icon(
                      Icons.location_on, // Location icon for bottom text
                      size: AppDimens.iconSizeSmall, // 18px
                      color: AppColors.white,
                    ),
                    const SizedBox(width: 4.0), // Inferred small gap
                    Expanded(
                      child: Text(
                        pin.location,
                        style: AppStyles.caption.copyWith(color: AppColors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Price (Bottom Right)
          Positioned(
            bottom: AppDimens.paddingSmall, // 8px
            right: AppDimens.paddingSmall, // 8px
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingSmall, // 8px horizontal
                vertical: AppDimens.paddingSmall / 2, // 4px vertical
              ),
              decoration: BoxDecoration(
                color: AppColors.tealNormal,
                borderRadius: BorderRadius.circular(AppDimens.borderRadiusSmall), // 4px radius
              ),
              child: Text(
                pin.price,
                style: AppStyles.caption.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
