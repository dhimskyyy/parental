import 'package:flutter/material.dart';
import '../widget/section/device_page/device_header_section.dart';
import '../widget/section/device_page/feature_section.dart';
import '../widget/todays_event/todays_event_card.dart';
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
            const DeviceHeaderSection(),
            TodaysEventCard(),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FeatureSection(),
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