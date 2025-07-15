import 'package:flutter/material.dart';
import 'package:parental/core/theme/app_colors.dart';
import 'package:parental/core/theme/app_text_styles.dart';
import 'package:parental/data/presentation/pages/device/device_page.dart';
import 'package:parental/data/presentation/pages/location/location_page.dart';
import 'package:parental/data/presentation/pages/family/family_page.dart';
import 'package:parental/data/presentation/pages/my/my_page.dart';

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
        border: Border(top: BorderSide(color: AppColors.greyLight)),
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTextStyles.navSelected,
        unselectedLabelStyle: AppTextStyles.navUnselected,
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
