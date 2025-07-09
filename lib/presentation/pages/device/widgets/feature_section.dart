import 'package:flutter/material.dart';
import 'data/feature_card.dart';
import 'data/dashboard_feature_item.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: dashboardFeatures.map((feature) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: FeatureCard(
              title: feature.title,
              imagePath: feature.imagePath,
              backgroundColor: feature.backgroundColor,
              iconColor: feature.iconColor,
              textBottomGap: feature.textBottomGap,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => feature.screen),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
