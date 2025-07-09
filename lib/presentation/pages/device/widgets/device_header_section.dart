import 'package:flutter/material.dart';
import './pages/subscription_page.dart';

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

// 👤 Avatar image
class AvatarImage extends StatelessWidget {
  const AvatarImage();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

// 🔋 Device info
class DeviceInfo extends StatelessWidget {
  const DeviceInfo();

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

// 🧩 Header bar: Avatar, device info, icons
class DeviceCard extends StatelessWidget {
  const DeviceCard();

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

// 🟨 Subscription card
class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C3B).withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: const [
                  Icon(Icons.bookmark, color: Colors.amber, size: 24),
                  Icon(Icons.add, color: Color.fromARGB(255, 126, 117, 50), size: 12),
                ],
              ),
              const SizedBox(width: 2),
              const Expanded(
                child: Text(
                  'Subscribe now and get extra days for FREE!',
                  style: TextStyle(color: Color.fromARGB(255, 230, 222, 197), fontSize: 14),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Color.fromARGB(129, 255, 255, 255),
            height: 1,
            thickness: 0.2,
          ),
          const SizedBox(height: 10),
          const Text(
            'Time left: 3 days',
            style: TextStyle(color: Color.fromARGB(255, 230, 222, 197), fontSize: 14),
          ),
        ],
      ),
    );
  }
}

// 🔐 Dialog batas device
class LimitDialog extends StatelessWidget {
  final VoidCallback onSubscribe;

  const LimitDialog({required this.onSubscribe});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Cannot Add More Devices',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                onPressed: onSubscribe,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B66F5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Subscription', style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel', style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
