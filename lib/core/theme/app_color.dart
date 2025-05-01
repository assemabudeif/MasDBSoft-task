import 'package:flutter/material.dart';
import '/core/functions/build_material_color.dart';

class AppColors {
  static const Color primary = Color(0xFF9C27B0);
  static const lightGreenColor = Color(0xFF2ECC71);
  static const greenColor = Color(0xFF2ECC71);
  static const Color blueColor = Color(0xFF3B82F6);
  static const backgroundColor = Color(0xFFffffff);
  static const secondBackgroundColor = Color(0xFFf7f7f7);
  static const blackColor = Color(0xFF000000);
  static const whiteColor = Color(0xFFFFFFFF);
  static const borderColor = Color(0xFFF3F4F6);

  static MaterialColor primarySwatchColor = buildMaterialColor(primary);

  static const Color dangerColor = Colors.red;
  static const Color warningColor = Color(0xffffcc00);

  static const Color hintColor = Color(0xff6B7280);
  static const Color successColor = Color(0xff4caf50);
  static const Color disabledColor = Color(0xff484C52);
}
