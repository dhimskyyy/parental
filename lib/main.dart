import 'package:flutter/material.dart';
import 'navigation/bottomnav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,

        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          trackColor: MaterialStateProperty.resolveWith((states) => const Color(0xFFE0E0E0)),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),

        visualDensity: const VisualDensity(horizontal: -2.0, vertical: -2.0),
      ),
      home: const BottomNav(),
    );
  }
}