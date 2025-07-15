import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:parental/core/theme/app_colors.dart';
import 'package:parental/core/theme/app_text_styles.dart';
import 'app_usage_tile.dart';
import 'category_chip.dart';

class DailyTabContent extends StatelessWidget {
  const DailyTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Updated: Today 15.46',
              style: AppTextStyles.caption,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Screen Time',
            style: AppTextStyles.greyLabel14.copyWith(fontWeight: FontWeight.w400, fontSize: 15),
          ),
          const SizedBox(height: 8),

          // Card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("30 Jun Today", style: AppTextStyles.greyLabel14),
                const SizedBox(height: 8),
                Text("9 min 55 s", style: AppTextStyles.usageTime),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.arrow_upward, color: AppColors.warning, size: 16),
                    const SizedBox(width: 4),
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.caption,
                        children: const [
                          TextSpan(
                            text: "Compared with yesterday: ",
                            style: TextStyle(color: AppColors.textPrimary),
                          ),
                          TextSpan(
                            text: "9 min 55 s",
                            style: TextStyle(color: AppColors.warning),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 100,
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      barGroups: [
                        BarChartGroupData(x: 15, barRods: [
                          BarChartRodData(toY: 3.7, color: AppColors.blue, width: 12),
                          BarChartRodData(toY: 5.8, color: AppColors.warning, width: 12),
                          BarChartRodData(toY: 9.9, color: AppColors.success, width: 12),
                        ]),
                      ],
                      gridData: FlGridData(show: true, horizontalInterval: 3),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 35,
                            interval: 3,
                            getTitlesWidget: (value, _) => Text(
                              '${value.toInt()} min',
                              style: AppTextStyles.caption.copyWith(fontSize: 10),
                            ),
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 4,
                            getTitlesWidget: (value, _) => Text(
                              value.toInt().toString().padLeft(2, '0'),
                              style: AppTextStyles.caption.copyWith(fontSize: 10),
                            ),
                          ),
                        ),
                        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      ),
                      borderData: FlBorderData(show: false),
                      barTouchData: BarTouchData(enabled: false),
                      maxY: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text("Screen time by category", style: AppTextStyles.title),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Expanded(child: CategoryChip(title: "Parenting", time: "3 min 42 s", bgColor: Color(0xFFE3F2FD), titleColor: AppColors.blue)),
                    SizedBox(width: 8),
                    Expanded(child: CategoryChip(title: "Tools", time: "1 min 18 s", bgColor: Color(0xFFFFF3E0), titleColor: AppColors.warning)),
                    SizedBox(width: 8),
                    Expanded(child: CategoryChip(title: "Other", time: "4 min 55 s", bgColor: Color(0xFFE8F5E9), titleColor: AppColors.success)),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(color: AppColors.greyLight, thickness: 0.7),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Downtime", style: AppTextStyles.greyLabel14),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text('Most Used Apps', style: AppTextStyles.title),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Column(
              children: [
                AppUsageTile(appName: 'AirDroid Kids', timeUsed: '3 min 42 s', assetPath: 'assets/images/airdroidkidss.png'),
                AppUsageTile(appName: 'Pengaturan', timeUsed: '2 min 56 s', assetPath: 'assets/images/airdroidkidss.png'),
                AppUsageTile(appName: 'Google', timeUsed: '2 min 10 s', assetPath: 'assets/images/airdroidkidss.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
