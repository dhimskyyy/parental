import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceSupervision extends StatefulWidget {
  const DeviceSupervision({super.key});

  @override
  State<DeviceSupervision> createState() => _DeviceSupervisionState();
}

class _DeviceSupervisionState extends State<DeviceSupervision> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label dan Schedule
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 12),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 16,
                decoration: BoxDecoration(
                  color: const Color(0xFF3B66F5),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Device Supervision',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Row(
                  children: [
                    Text(
                      'Schedule',
                      style: TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward_ios_rounded,
                        size: 14, color: Color(0xFF6D6D6D)),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Card Container
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFE4E4E4)),
          ),
          child: Column(
            children: [
              _buildTile(
                CupertinoIcons.lock,
                'Instant Block',
                trailing: Transform.scale(
                  scale: 1,
                  child: CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ),
              _buildTile(Icons.schedule_outlined, 'Downtime'),
              _buildTile(Icons.verified_outlined, 'Always Allowed'),
              _buildTile(Icons.hourglass_empty_outlined, 'App Limits'),
              _buildTile(Icons.settings_suggest_outlined, 'App & Content Restrictions'),
              _buildTile(Icons.visibility_outlined, 'Social Content Detection'),
              _buildTile(Icons.public_off_outlined, 'Website Restrictions'),
              _buildTile(Icons.sms_outlined, 'Calls & SMS Monitoring'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTile(IconData icon, String title, {Widget? trailing}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      leading: Icon(icon, size: 26, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
      trailing: trailing ??
          const Icon(Icons.arrow_forward_ios_rounded,
              size: 16, color: Color(0xFF9E9E9E)),
      onTap: () {},
    );
  }
}
