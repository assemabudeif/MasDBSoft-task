/// This file contains custom extensions to enhance Flutter's BuildContext and String classes.
/// It provides convenient navigation methods and string manipulation utilities.
library;

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '/core/theme/app_color.dart';

/// Extension on String to provide capitalization utility.
extension StringCapitalizeExtension on String {
  /// Capitalizes the first letter of the string if it is not empty.
  String capitalize() =>
      (isEmpty) ? this : "${this[0].toUpperCase()}${substring(1)}";
}

/// Extension on BuildContext to provide navigation and UI utility methods.
extension BuildContextNavigationExtension on BuildContext {
  /// Returns the current text theme.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the current theme data.
  ThemeData get theme => Theme.of(this);

  /// Returns the size of the current media (screen).
  Size get size => MediaQuery.of(this).size;

  /// Returns the padding of the current media (screen).
  EdgeInsets get padding => MediaQuery.of(this).padding;

  /// Returns the full MediaQueryData.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Navigates to the given widget route.
  void navigateTo(Widget route) => Navigator.of(this).push(
        MaterialPageRoute(
          builder: (context) => route,
        ),
      );

  /// Navigates to a named route.
  void navigateToNamed(String routeName) =>
      Navigator.of(this).pushNamed(routeName);

  /// Navigates to a named route with arguments.
  void navigateToWithArgs(String routeName, Object arguments) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  /// Replaces the current route with a named route.
  void replaceWithRoute(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);

  /// Replaces the current route with a named route and arguments.
  void replaceWithRouteAndArgs(String routeName, Object arguments) =>
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);

  /// Clears the navigation stack and navigates to a named route.
  void clearAndNavigateTo(String routeName) =>
      Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);

  /// Clears the navigation stack and navigates to a named route with arguments.
  void clearAndNavigateToWithArgs(String routeName, Object arguments) =>
      Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false,
          arguments: arguments);

  /// Pops the current route.
  void pop() => Navigator.of(this).pop();

  /// Pops routes until the specified named route is reached.
  void popUntilRouteNamed(String routeName) =>
      Navigator.of(this).popUntil(ModalRoute.withName(routeName));

  /// Shows a SnackBar message with customizable background and text colors.
  void showMessage(
    String message, {
    Color backgroundColor = AppColors.successColor,
    Color textColor = AppColors.whiteColor,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(
              color: textColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: backgroundColor,
        ),
      );

  /// Shows a success message SnackBar.
  void showSuccessMessage(String message) => showMessage(
        message,
        backgroundColor: AppColors.successColor,
      );

  /// Shows an error message SnackBar.
  void showErrorMessage(String message) => showMessage(
        message,
        backgroundColor: AppColors.dangerColor,
      );

  /// Shows a warning message SnackBar.
  void showWarningMessage(String message) => showMessage(
        message,
        backgroundColor: AppColors.warningColor,
      );
}
