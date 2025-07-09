import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import './presentation/navigation/bottomnav.dart';

void main() {
  // Jika nanti pakai dependency injection, bisa panggil setup di sini
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const BottomNav(),
    );
  }
}
