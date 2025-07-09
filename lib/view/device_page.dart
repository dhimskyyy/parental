import 'package:flutter/material.dart';
import '../widget/dahsboard_card/header_section/section/device_header_section.dart';
import '../widget/dahsboard_card/header_section/section/feature_section.dart';
import '../widget/dahsboard_card/te_section/todays_event_card.dart';
import '../widget/dahsboard_card/do_section/device_overview.dart';
import '../widget/dahsboard_card/ds_section/device_supervision.dart';
import '../widget/dahsboard_card/ocd_section/on_childs_device.dart';

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