import 'package:flutter/material.dart';
import 'package:interview_task/features/home_layout/views/home_layout_view.dart';

class AppRoutes {
  /// Base routes
  static const String initialRoute = '/';
}

class RoutesManager {
  static Route<dynamic>? Function(RouteSettings settings) onGenerateRoute =
      (settings) {
    switch (settings.name) {
      /// Base routes
      case AppRoutes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeLayoutView(),
        );

      default:
        return null;
    }
  };
}
