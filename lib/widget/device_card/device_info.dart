import 'package:flutter/material.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Samsung SM-A155F',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.battery_charging_full, size: 14, color: Colors.white),
              SizedBox(width: 6),
              Text('97%', style: TextStyle(fontSize: 14, color: Colors.white)),
              SizedBox(width: 10),
              Icon(Icons.wifi, size: 14, color: Colors.white),
              SizedBox(width: 6),
              Text('desktop-03ihl1p 3327', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
