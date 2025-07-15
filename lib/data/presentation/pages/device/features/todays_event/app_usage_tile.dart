import 'package:flutter/material.dart';
import 'package:parental/core/theme/app_text_styles.dart';

class AppUsageTile extends StatelessWidget {
  final String appName;
  final String timeUsed;
  final String assetPath;

  const AppUsageTile({
    super.key,
    required this.appName,
    required this.timeUsed,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(assetPath, width: 40, height: 40),
        ),
        title: Text(
          appName,
          style: AppTextStyles.cardTitle.copyWith(fontSize: 14),
        ),
        subtitle: Text(
          timeUsed,
          style: AppTextStyles.caption.copyWith(fontSize: 12),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
