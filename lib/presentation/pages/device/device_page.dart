import 'package:flutter/material.dart';
import 'widgets/device_header_section.dart';
import 'widgets/todays_event_card.dart';
import 'widgets/feature_section.dart';
import 'widgets/device_overview.dart';
import 'widgets/device_supervision.dart';
import 'widgets/on_childs_device.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            DeviceHeaderSection(),
            TodaysEventCard(),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FeatureSection(),
            ),
            DeviceOverview(),
            DeviceSupervision(),
            OnChildsDevice(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
