import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key});

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
