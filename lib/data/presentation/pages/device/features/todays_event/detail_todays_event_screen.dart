import 'package:flutter/material.dart';
import 'package:parental/core/theme/app_colors.dart';
import 'package:parental/core/theme/app_text_styles.dart';
import 'daily_tab_content.dart';

class TodaysEventDetailScreen extends StatelessWidget {
  const TodaysEventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0.5,
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: AppColors.black),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Today's Event",
                            style: AppTextStyles.titleBold18,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(Icons.refresh, color: AppColors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelColor: AppColors.primary,
                      unselectedLabelColor: AppColors.greyText,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: AppTextStyles.navSelected,
                      unselectedLabelStyle: AppTextStyles.navUnselected,
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                      dividerColor: Colors.transparent,
                      tabs: const [
                        Tab(text: 'Daily'),
                        Tab(text: 'Weekly'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            DailyTabContent(),
            DailyTabContent(),
          ],
        ),
      ),
    );
  }
}
