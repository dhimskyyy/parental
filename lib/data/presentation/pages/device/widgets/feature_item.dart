import 'package:flutter/material.dart';
import '../features/remote_camera/detail_remote_camera.dart';
import '../features/screen_mirroring/detail_screen_mirroring.dart';
import '../features/one-way_audio/detail_one_way_audio.dart';

class DashboardFeatureItem {
  final String title;
  final String imagePath;
  final Color backgroundColor;
  final Color iconColor;
  final double textBottomGap;
  final Widget screen;

  const DashboardFeatureItem({
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
    required this.iconColor,
    required this.textBottomGap,
    required this.screen,
  });
}

const List<DashboardFeatureItem> dashboardFeatures = [
  DashboardFeatureItem(
    title: 'Remote\nCamera',
    imagePath: 'assets/icons/remote_camera.png',
    backgroundColor: Color(0xFFD7E6FD),
    iconColor: Color(0xFF3A75F7),
    textBottomGap: 10,
    screen: RemoteCamera(),
  ),
  DashboardFeatureItem(
    title: 'Screen\nMirroring',
    imagePath: 'assets/icons/screen_mirroring.png',
    backgroundColor: Color(0xFFFFF0D7),
    iconColor: Color(0xFFFF9900),
    textBottomGap: 12,
    screen: ScreenMirroring(),
  ),
  DashboardFeatureItem(
    title: 'One-Way\nAudio',
    imagePath: 'assets/icons/one_way_audio.png',
    backgroundColor: Color(0xFFDAF3EC),
    iconColor: Color(0xFF23BF73),
    textBottomGap: 8,
    screen: OneWayAudio(),
  ),
];
