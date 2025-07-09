import 'package:flutter/material.dart';
import '../widget/feature_card.dart';
import '../model/dashboard_feature_item.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: dashboardFeatures.map((feature) {
          return FeatureCard(
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
          );
        }).toList(),
      ),
    );
  }
}
