import 'package:flutter/material.dart';
import 'package:parental/core/theme/app_text_styles.dart';
import 'package:parental/core/theme/app_colors.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Samsung SM-A155F',
          style: AppTextStyles.deviceTitle,
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.battery_charging_full, size: 14, color: Colors.white),
              SizedBox(width: 6),
              Text('97%', style: AppTextStyles.deviceStatus),
              SizedBox(width: 10),
              Icon(Icons.wifi, size: 14, color: Colors.white),
              SizedBox(width: 6),
              Text('desktop-03ihl1p 3327', style: AppTextStyles.deviceStatus),
            ],
          ),
        ),
      ],
    );
  }
}
