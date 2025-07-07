import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onTap;
  final double textBottomGap;
  final double imageSize;

  const FeatureCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
    required this.onTap,
    required this.iconColor,
    required this.textBottomGap,
    this.imageSize = 48,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 117,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6), // vertikal dikurangi
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                maxLines: 2,
              ),
            ),
            SizedBox(height: textBottomGap),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imagePath, height: imageSize),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: iconColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
