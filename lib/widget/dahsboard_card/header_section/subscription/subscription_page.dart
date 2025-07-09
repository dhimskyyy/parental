import 'package:flutter/material.dart';
import 'subscription_card.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription'),
        backgroundColor: const Color(0xFF3B66F5),
      ),
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(20),
        child: const SubscriptionCard(),
      ),
    );
  }
}
