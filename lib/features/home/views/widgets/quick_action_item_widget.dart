import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/extensions.dart';
import '/core/utilities/font_manager.dart';
import '/features/home/models/quick_action_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuickActionItemWidget extends StatelessWidget {
  const QuickActionItemWidget({
    super.key,
    required this.model,
  });

  final QuickActionModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(2.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FaIcon(
            model.icon,
            size: 16.sp,
            color: AppColors.primary,
          ),
          SizedBox(width: 3.w),
          Text(
            model.title,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontManager.regularFontWeight,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
