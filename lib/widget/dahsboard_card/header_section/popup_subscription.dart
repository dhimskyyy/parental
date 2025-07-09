import 'package:flutter/material.dart';


class LimitDialog extends StatelessWidget {
  final VoidCallback onSubscribe;

  const LimitDialog({super.key, required this.onSubscribe});

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
