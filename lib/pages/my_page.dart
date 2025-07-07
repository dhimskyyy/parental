import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  CircleAvatar(
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/people.png',
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User746682', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('dhmsafrzl@gmail.com', style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _menuCard(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  leading: const Icon(Icons.star_border, size: 26, color: Colors.black),
                  title: const Text('Free Trial', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  subtitle: const Text(
                    'Your trial has expired',
                    style: TextStyle(fontSize: 13, color: Colors.red),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Subscription', style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 6),
                      Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Color(0xFF9E9E9E)),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),

            _labelWithTitle('Preferences'),

            _menuCard(
              children: [
                _menuItem(icon: Icons.group, title: 'Family Members'),
                _menuItem(icon: Icons.email_outlined, title: 'Email Subscription'),
                _menuItem(icon: Icons.phone_android, title: "Child's Devices", trailingText: '1'),
                _menuItem(icon: Icons.mic_none, title: 'My Recordings'),
                _menuItem(icon: Icons.lock_outline, title: 'Admin Code'),
              ],
            ),

            _labelWithTitle('Others'),

            _menuCard(
              children: [
                _menuItem(icon: Icons.star_outline, title: 'Rate Us'),
                _menuItem(icon: Icons.info_outline, title: 'About Us', trailingText: 'Version 2.4.3'),
              ],
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: const Size(double.infinity, 48),
                    ),
                    child: const Text('Sign Out'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _labelWithTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 12),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 16,
            decoration: BoxDecoration(
              color: const Color(0xFF3B66F5),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(title,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
          ),
        ],
      ),
    );
  }

  Widget _menuCard({required List<Widget> children}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE4E4E4)),
      ),
      child: Column(children: children),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String title,
    String? trailingText,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      leading: Icon(icon, size: 26, color: Colors.black),
      title: Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
      trailing: trailingText != null
          ? Text(trailingText, style: const TextStyle(color: Colors.grey))
          : const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color(0xFF9E9E9E)),
      onTap: () {},
    );
  }
}
