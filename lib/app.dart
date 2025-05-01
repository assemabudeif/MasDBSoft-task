import 'package:flutter/material.dart';
import 'package:interview_task/core/constants/app_constance.dart';
import 'package:interview_task/core/theme/theme_data/light_them.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/utilities/app_routes.dart';

class InterviewTaskApp extends StatelessWidget {
  const InterviewTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (
        BuildContext context,
        Orientation orientation,
        ScreenType screenType,
      ) {
        return MaterialApp(
          title: kAppName,
          debugShowCheckedModeBanner: false,
          theme: getMaterialAppLightTheme,
          onGenerateRoute: RoutesManager.onGenerateRoute,
          initialRoute: AppRoutes.initialRoute,
        );
      },
    );
  }
}
