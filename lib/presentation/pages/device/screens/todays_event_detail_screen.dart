import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TodaysEventDetailScreen extends StatelessWidget {
  const TodaysEventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Today's Event",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(Icons.refresh, color: Colors.black),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelColor: const Color(0xFF3B66F5),
                      unselectedLabelColor: Colors.grey.shade600,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(fontWeight: FontWeight.w500),
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
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
            _DailyTabContent(),
            _DailyTabContent(),
          ],
        ),
      ),
    );
  }
}

class _DailyTabContent extends StatelessWidget {
  const _DailyTabContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Updated: Today 15.46',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Screen Time',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("30 Jun Today", style: TextStyle(fontSize: 14)),
                const SizedBox(height: 8),
                const Text(
                  "9 min 55 s",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_upward,
                      color: Colors.orange,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 12),
                        children: [
                          TextSpan(
                            text: "Compared with yesterday: ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "9 min 55 s",
                            style: TextStyle(color: Colors.orange),
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
                        BarChartGroupData(
                          x: 15,
                          barRods: [
                            BarChartRodData(
                              toY: 3.7,
                              color: Colors.blue,
                              width: 12,
                              borderRadius: BorderRadius.zero,
                            ),
                            BarChartRodData(
                              toY: 5.8,
                              color: Colors.orange,
                              width: 12,
                              borderRadius: BorderRadius.zero,
                            ),
                            BarChartRodData(
                              toY: 9.9,
                              color: Colors.green,
                              width: 12,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ],
                        ),
                      ],
                      gridData: FlGridData(show: true, horizontalInterval: 3),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 35,
                            interval: 3,
                            getTitlesWidget: (value, meta) => Text(
                              '${value.toInt()} min',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) => Text(
                              value.toInt().toString().padLeft(2, '0'),
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            interval: 4,
                          ),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      barTouchData: BarTouchData(enabled: false),
                      maxY: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Screen time by category",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: _categoryChip(
                        "Parenting",
                        "3 min 42 s",
                        Colors.blue.shade50,
                        Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _categoryChip(
                        "Tools",
                        "1 min 18 s",
                        Colors.orange.shade50,
                        Colors.orange,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _categoryChip(
                        "Other",
                        "4 min 55 s",
                        Colors.green.shade50,
                        Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(color: Colors.grey.shade300, thickness: 0.7),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text("Downtime", style: TextStyle(fontSize: 14)),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Most Used Apps',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                _appUsageTile(
                  'AirDroid Kids',
                  '3 min 42 s',
                  'assets/images/airdroidkidss.png',
                ),
                _appUsageTile(
                  'Pengaturan',
                  '2 min 56 s',
                  'assets/images/airdroidkidss.png',
                ),
                _appUsageTile(
                  'Google',
                  '2 min 10 s',
                  'assets/images/airdroidkidss.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _categoryChip(
    String title,
    String time,
    Color bgColor,
    Color titleColor,
  ) {
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
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            time,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  static Widget _appUsageTile(
    String appName,
    String timeUsed,
    String assetPath,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(assetPath, width: 40, height: 40),
        ),
        title: Text(appName, style: const TextStyle(fontSize: 14)),
        subtitle: Text(timeUsed, style: const TextStyle(fontSize: 12)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
