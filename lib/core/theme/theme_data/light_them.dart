import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';
import '/core/theme/text_style.dart';
import '/core/utilities/font_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ThemeData get getMaterialAppLightTheme => ThemeData(
      /// Define the default brightness and colors.
      primarySwatch: AppColors.primarySwatchColor,
      primaryColor: AppColors.primary,
      fontFamily: FontManager.defaultFontFamily,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      colorScheme: ThemeData.light().colorScheme.copyWith(
            primary: AppColors.primary,
          ),

      /// Define the default app bar theme.
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
            backgroundColor: AppColors.backgroundColor,
            centerTitle: false,
            titleSpacing: 0,
            foregroundColor: AppColors.backgroundColor,
            surfaceTintColor: AppColors.backgroundColor,
            titleTextStyle: getBoldStyle.copyWith(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
              fontFamily: FontManager.defaultFontFamily,
            ),
            elevation: 0,
            iconTheme: ThemeData.light().iconTheme.copyWith(
                  color: AppColors.blackColor,
                ),
          ),

      /// Define the default text form field theme.
      textSelectionTheme: ThemeData.light().textSelectionTheme.copyWith(
            cursorColor: AppColors.primary,
            selectionColor: AppColors.primary,
            selectionHandleColor: AppColors.primary,
          ),
    );
