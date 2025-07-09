import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

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
