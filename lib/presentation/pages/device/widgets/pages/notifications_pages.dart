import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.filter_alt_outlined, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '6/30',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          _notificationCard(
            appIcon: Icons.facebook,
            appName: 'Facebook',
            time: '7/14 12.53',
            title: 'Facebook',
            message: 'MhmmdDhimas, Anda memiliki saran teman baru: Donald Trump',
          ),
          _notificationCard(
            appIcon: Icons.chat,
            appName: 'Telegram',
            time: '7/14 10.41',
            title: 'Money & Crypto News',
            message:
                'In June 2025 alone, 3.87m new Ethereum addresses were created—approaching peak levels from the last bull cycle.\n\n'
                'Weekly wallet creation now ranges from 800,000 to 1m, up significantly from 560,000–670,000 in 2023.',
            tags: const ['@Money', 'Twitter'],
          ),
          _notificationCard(
            appIcon: Icons.telegram,
            appName: 'Telegram',
            time: '7/14 08.22',
            title: 'Chattttt',
            message:
                'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            tags: const ['@Money', 'Twitter'],
          ),
        ],
      ),
    );
  }

  Widget _notificationCard({
    required IconData appIcon,
    required String appName,
    required String time,
    required String title,
    required String message,
    List<String>? tags,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(appIcon, color: Colors.blue, size: 18),
              const SizedBox(width: 6),
              Text(appName, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
              const Spacer(),
              Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text(
            message,
            style: const TextStyle(fontSize: 13, height: 1.4),
          ),
          if (tags != null) ...[
            const SizedBox(height: 12),
            Wrap(
              spacing: 16,
              children: tags.map((t) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.phone_iphone, size: 14),
                  const SizedBox(width: 4),
                  Text(t, style: const TextStyle(fontSize: 13)),
                ],
              )).toList(),
            ),
          ],
        ],
      ),
    );
  }
}
