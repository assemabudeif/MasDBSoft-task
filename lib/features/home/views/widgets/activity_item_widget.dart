import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_task/core/theme/app_color.dart';
import 'package:interview_task/core/utilities/extensions.dart';
import 'package:interview_task/core/utilities/font_manager.dart';
import 'package:interview_task/features/home/models/activity_item_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ActivityItemWidget extends StatelessWidget {
  const ActivityItemWidget({
    super.key,
    required this.model,
  });
  final ActivityItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.borderColor,
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 1.5.h,
        horizontal: 3.w,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18.sp,
            backgroundColor: model.color.withValues(alpha: 0.1),
            child: FaIcon(
              model.icon,
              size: 16.sp,
              color: model.color,
            ),
          ),
          SizedBox(width: 3.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontManager.mediumFontWeight,
                ),
              ),
              Text(
                model.date,
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontManager.regularFontWeight,
                  color: AppColors.hintColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 0.5.h,
              horizontal: 1.5.w,
            ),
            decoration: BoxDecoration(
              color: model.color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(50.sp),
            ),
            child: Text(
              model.description,
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontManager.semiBoldFontWeight,
                color: model.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
