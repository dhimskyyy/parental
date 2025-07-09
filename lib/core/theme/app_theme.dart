import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith((states) => Colors.white),
      trackColor: MaterialStateProperty.resolveWith((states) => const Color(0xFFE0E0E0)),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),

    visualDensity: const VisualDensity(horizontal: -2.0, vertical: -2.0),
  );
}
