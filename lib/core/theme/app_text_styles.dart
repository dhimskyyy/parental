import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const deviceTitle = TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white);
  static const chipText = TextStyle(fontSize: 14, color: Colors.white);
  static const subscriptionInfo = TextStyle(fontSize: 14, color: Color.fromARGB(255, 230, 222, 197));
  static const dialogTitle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const dialogDesc = TextStyle(fontSize: 14);
  static const titleBold18 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.black);
  static const usageTime = TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.black);
  static const greyLabel14 = TextStyle(fontSize: 14, color: AppColors.grey);
  static const subLabel = TextStyle(fontSize: 14, color: Color(0xFF7E7D7D));
  static const title = TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textPrimary);
  static const caption = TextStyle(fontSize: 12, color: AppColors.greyText);
  static const cardTitle = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  
  static const TextStyle deviceStatus = TextStyle(
    fontSize: 14,
    color: Colors.white,
  );

  static const TextStyle deviceName = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static const body = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  static const bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextTheme textTheme = const TextTheme(
    bodyLarge: body,
    bodyMedium: body,
    titleLarge: title,
  );

  static const TextStyle navSelected = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle navUnselected = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
