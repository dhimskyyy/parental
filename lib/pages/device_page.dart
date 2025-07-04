import 'package:flutter/material.dart';
import '../widget/device_card.dart';
import '../widget/subscription_card.dart';
import '../widget/todays_event_card.dart';
import '../features/remote_camera.dart';
import '../features/screen_mirroring.dart';
import '../features/one_way_audio.dart';
import '../widget/feature_card.dart';
import '../widget/device_overview/device_overview.dart';
import '../widget/device_supervision/device_supervision.dart';
import '../widget/on_childs_device/on_childs_device.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3B66F5), Color(0xFF5B84F7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 16),
                  DeviceCard(),
                  SizedBox(height: 24),
                  SubscriptionCard(),
                ],
              ),
            ),

            TodaysEventCard(),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeatureCard(
                    title: 'Remote\nCamera',
                    imagePath: 'assets/icons/remote_camera.png',
                    backgroundColor: Color(0xFFD7E6FD),
                    iconColor: Color(0xFF3A75F7),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const RemoteCamera()));
                    },
                    textBottomGap: 10,
                  ),
                  FeatureCard(
                    title: 'Screen\nMirroring',
                    imagePath: 'assets/icons/screen_mirroring.png',
                    backgroundColor: Color(0xFFFFF0D7),
                    iconColor: Color(0xFFFF9900),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenMirroring()));
                    },
                    textBottomGap: 12,
                  ),
                  FeatureCard(
                    title: 'One-Way\nAudio',
                    imagePath: 'assets/icons/one_way_audio.png',
                    backgroundColor: Color(0xFFDAF3EC),
                    iconColor: Color(0xFF23BF73),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const OneWayAudio()));
                    },
                    textBottomGap: 8,
                  ),
                ],
              ),
            ),

            const DeviceOverview(),
            const DeviceSupervision(),
            const OnChildsDevice(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
