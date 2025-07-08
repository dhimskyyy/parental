import 'package:flutter/material.dart';
import '../../device_card/device_card.dart';
import '../../subscription/subscription_card.dart';

class DeviceHeaderSection extends StatelessWidget {
  const DeviceHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
