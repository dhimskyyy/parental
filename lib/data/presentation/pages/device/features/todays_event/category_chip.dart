import 'package:flutter/material.dart';
import 'package:parental/core/theme/app_text_styles.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  final String time;
  final Color bgColor;
  final Color titleColor;

  const CategoryChip({
    super.key,
    required this.title,
    required this.time,
    required this.bgColor,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.caption.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            time,
            style: AppTextStyles.cardTitle.copyWith(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
