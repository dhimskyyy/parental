import 'package:flutter/material.dart';

class OnChildsDevice extends StatelessWidget {
  const OnChildsDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label "On Child's Device" dengan indikator biru
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 16,
                decoration: BoxDecoration(
                  color: const Color(0xFF2452FF),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "On Child's Device",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

        // Card Box
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFE5E5E5)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: const [
              _ChildTile(
                icon: Icons.fact_check_outlined,
                title: 'Check the Required Permissions',
              ),
              _ChildTile(
                icon: Icons.system_update_alt_outlined,
                title: 'Check Updates',
              ),
              _ChildTile(
                icon: Icons.lock_outline,
                title: 'Enable Augmented Supervision Mode',
              ),
              _ChildTile(
                icon: Icons.wb_sunny_outlined,
                title: 'Open the Hidden AirDroid Kids?',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Custom Widget for individual tile
class _ChildTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ChildTile({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      leading: Icon(icon, size: 26, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 14,
        color: Color(0xFF9E9E9E),
      ),
      onTap: () {},
    );
  }
}
