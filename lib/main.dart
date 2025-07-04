import 'package:flutter/material.dart';
import 'package:parental/widget/device_supervision/device_supervision.dart';
import 'widget/device_card.dart';
import 'widget/subscription_card.dart';
import 'widget/todays_event_card.dart';
import 'features/remote_camera.dart';
import 'features/screen_mirroring.dart';
import 'features/one_way_audio.dart';
import 'widget/feature_card.dart';
import 'widget/device_overview/device_overview.dart';
import 'widget/on_childs_device/on_childs_device.dart';
import 'navigation/bottomnav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,

        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          trackColor: MaterialStateProperty.resolveWith((states) => const Color(0xFFE0E0E0)),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),

        visualDensity: const VisualDensity(horizontal: -2.0, vertical: -2.0),
      ),
      home: const BottomNav(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3B66F5), Color(0xFF5B84F7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 16),
                  DeviceCard(),
                  SizedBox(height: 24),
                  SubscriptionCard(),
                ],
              ),
            ),

            TodaysEventCard(),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeatureCard(
                    title: 'Remote\nCamera',
                    imagePath: 'assets/icons/remote_camera.png',
                    backgroundColor: Color(0xFFD7E6FD),
                    iconColor: Color(0xFF3A75F7),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const RemoteCamera()));
                    },
                    textBottomGap: 10,
                  ),
                  FeatureCard(
                    title: 'Screen\nMirroring',
                    imagePath: 'assets/icons/screen_mirroring.png',
                    backgroundColor: Color(0xFFFFF0D7),
                    iconColor: Color(0xFFFF9900),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenMirroring()));
                    },
                    textBottomGap: 12,
                  ),
                  FeatureCard(
                    title: 'One-Way\nAudio',
                    imagePath: 'assets/icons/one_way_audio.png',
                    backgroundColor: Color(0xFFDAF3EC),
                    iconColor: Color(0xFF23BF73),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const OneWayAudio()));
                    },
                    textBottomGap: 8,
                  ),
                ],
              ),
            ),
            
            const DeviceOverview(),
            const DeviceSupervision(),
            const OnChildsDevice(),
            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}
