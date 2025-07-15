import 'package:flutter/material.dart';
import '../pages/device/device_page.dart';
import 'package:parental/view/family_page.dart';
import 'package:parental/view/location_page.dart';
import 'package:parental/view/my_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    DevicePage(),
    LocationMainPage(),
    FamilyPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFFE0E0E0))),
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF3B66F5),
        unselectedItemColor: const Color(0xFF9E9E9E),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.devices), label: 'Device'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: 'Location'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Family'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'My'),
        ],
      ),
    );
  }
}