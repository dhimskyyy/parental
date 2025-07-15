import 'package:flutter/material.dart';
import 'avatar_image.dart';
import 'device_info.dart';
import 'limit_dialog.dart';
import 'subscription_page.dart';


class DeviceCard extends StatelessWidget {
  const DeviceCard({super.key});

  void _showLimitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => LimitDialog(
        onSubscribe: () {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SubscriptionPage()),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AvatarImage(),
        const SizedBox(width: 10),
        const DeviceInfo(),
        const Spacer(),
        const Icon(Icons.chat_bubble_outline, color: Colors.white),
        const SizedBox(width: 15),
        GestureDetector(
          onTap: () => _showLimitDialog(context),
          child: const Icon(Icons.add_circle_outline, color: Colors.white),
        ),
      ],
    );
  }
}
