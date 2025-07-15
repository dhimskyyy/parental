import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,

    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.white,

    textTheme: AppTextStyles.textTheme,

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.white),
      trackColor: MaterialStateProperty.all(AppColors.greyLight),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),

    visualDensity: const VisualDensity(horizontal: -2.0, vertical: -2.0),
  );
}
