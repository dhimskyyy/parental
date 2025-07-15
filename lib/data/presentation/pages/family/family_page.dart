import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Family',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          /// Family Group (title)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: const Color(0xFFE8F0FE),
              child: Image.asset('assets/images/family.png', width: 55),
            ),
            title: const Text(
              'Family Group (2)',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            onTap: () {}, // optional tap
          ),
          const Divider(height: 32),

          /// Anggota keluarga - Samsung SM-A155F
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: const Color(0xFFE8F0FE),
              backgroundImage: AssetImage('assets/images/people.png'),
            ),
            title: const Text(
              'Samsung SM-A155F',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            onTap: () {}, // optional
          ),
        ],
      ),
    );
  }
}
