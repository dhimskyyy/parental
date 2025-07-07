import 'package:flutter/material.dart';
import '../widget/subscription/subscription_page.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({super.key});

  void _showLimitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Cannot Add More Devices',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Sorry, you cannot add more devices since the number of your bound devices has reached the limits.\n\nYou can subscribe AirDroid Parental Control to bind more devices.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Tutup dialog
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SubscriptionPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B66F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    'Subscription',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Tutup dialog
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/people.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),

        // Info Device
        Column(
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
        ),
        const Spacer(),

        // Icon Chat & Add
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
