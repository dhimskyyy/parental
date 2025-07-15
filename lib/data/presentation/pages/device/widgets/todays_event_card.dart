import 'package:flutter/material.dart';
import '../features/todays_event/detail_todays_event_screen.dart';

class TodaysEventCard extends StatelessWidget {
  const TodaysEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Today's Event",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TodaysEventDetailScreen()),
                  );
                },
                child: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ],
          ),

          // Label Usage Time
          const Text(
            'Usage time',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),

          // Progress Bar
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: 0.01,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              minHeight: 4,
            ),
          ),
          const SizedBox(height: 5),

          // Waktu + Ilustrasi
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '8 min 54 s',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              
            ],
          ),
          const SizedBox(height: 4),

          // Logo + text
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Most used',
                    style: TextStyle(
                      color: Color.fromARGB(255, 126, 125, 125),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Image.asset(
                    'assets/images/airdroidkidss.png',
                    width: 130,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
              const Spacer(),
              Container(
                alignment: Alignment.bottomRight,
                height: 70,
                width: 190,
                child: Image.asset(
                  'assets/images/usage_illustration.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
