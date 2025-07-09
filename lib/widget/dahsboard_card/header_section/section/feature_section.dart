import 'package:flutter/material.dart';
import '../../feature_section/widget/feature_card.dart';
import '../../feature_section/screen/remote_camera.dart';
import '../../feature_section/screen/screen_mirroring.dart';
import '../../feature_section/screen/one_way_audio.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Wrap(
        spacing: 10,
        children: [
          _buildFeatureCard(context,
            title: 'Remote\nCamera',
            imagePath: 'assets/icons/remote_camera.png',
            backgroundColor: const Color(0xFFD7E6FD),
            iconColor: const Color(0xFF3A75F7),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RemoteCamera())),
            textBottomGap: 10,
          ),
          _buildFeatureCard(context,
            title: 'Screen\nMirroring',
            imagePath: 'assets/icons/screen_mirroring.png',
            backgroundColor: const Color(0xFFFFF0D7),
            iconColor: const Color(0xFFFF9900),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenMirroring())),
            textBottomGap: 10,
          ),
          _buildFeatureCard(context,
            title: 'One-Way\nAudio',
            imagePath: 'assets/icons/one_way_audio.png',
            backgroundColor: const Color(0xFFDAF3EC),
            iconColor: const Color(0xFF23BF73),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const OneWayAudio())),
            textBottomGap: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required String title,
    required String imagePath,
    required Color backgroundColor,
    required Color iconColor,
    required VoidCallback onTap,
    required double textBottomGap,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3 - 20,
      child: FeatureCard(
        title: title,
        imagePath: imagePath,
        backgroundColor: backgroundColor,
        iconColor: iconColor,
        onTap: onTap,
        textBottomGap: textBottomGap,
      ),
    );
  }
}
