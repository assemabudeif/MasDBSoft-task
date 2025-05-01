import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/extensions.dart';
import '/features/home/models/summary_item_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utilities/font_manager.dart';

class SummaryItemWidget extends StatelessWidget {
  const SummaryItemWidget({
    super.key,
    required this.model,
  });
  final SummaryItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.borderColor,
        ),
        color: model.color.withValues(alpha: 0.1),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 1.5.h,
        horizontal: 3.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.title,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontManager.mediumFontWeight,
                  color: model.color,
                ),
              ),
              FaIcon(
                model.icon,
                size: 16.sp,
                color: model.color,
              )
            ],
          ),
          SizedBox(height: 0.8.h),
          Text(
            model.value,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontManager.boldFontWeight,
            ),
          ),
          Text(
            model.description,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontManager.regularFontWeight,
              color: AppColors.greenColor,
            ),
          )
        ],
      ),
    );
  }
}
