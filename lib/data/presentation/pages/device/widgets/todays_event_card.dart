// today's_event_card.dart
import 'package:flutter/material.dart';
import 'package:parental/core/theme/app_colors.dart';
import 'package:parental/core/theme/app_text_styles.dart';
import 'package:parental/data/presentation/pages/device/features/todays_event/detail_todays_event_screen.dart';

class TodaysEventCard extends StatelessWidget {
  const TodaysEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const SizedBox(height: 10),
          const Text('Usage time', style: AppTextStyles.greyLabel14),
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: 0.01,
              backgroundColor: AppColors.grey.shade300,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 5),
          const _UsageSummary(),
          const _ImageRow(),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Today's Event", style: AppTextStyles.titleBold18),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TodaysEventDetailScreen()),
            );
          },
          child: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ],
    );
  }
}

class _UsageSummary extends StatelessWidget {
  const _UsageSummary();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text('8 min 54 s', style: AppTextStyles.usageTime),
        Spacer(),
      ],
    );
  }
}

class _ImageRow extends StatelessWidget {
  const _ImageRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Most used', style: AppTextStyles.subLabel),
            const SizedBox(height: 5),
            Image.asset('assets/images/airdroidkidss.png', width: 130),
          ],
        ),
        const Spacer(),
        Container(
          height: 70,
          width: 190,
          alignment: Alignment.bottomRight,
          child: Image.asset('assets/images/usage_illustration.png', fit: BoxFit.contain),
        ),
      ],
    );
  }
}
