import 'package:flutter/material.dart';

class ApplicationsPage extends StatelessWidget {
  const ApplicationsPage({super.key});

  final List<Map<String, String>> dummyApps = const [
  {'name': '8 Ball Pool', 'icon': 'assets/icons/8pool.png'},
  {'name': 'Access by KAI', 'icon': 'assets/icons/kai.png'},
  {'name': 'AirDroid Kids', 'icon': 'assets/images/airdroidkidss.png'},
  {'name': 'Authenticator', 'icon': 'assets/icons/aut.png'},
  {'name': 'bima+', 'icon': 'assets/icons/bima.png'},
  {'name': '8 Ball Pool', 'icon': 'assets/icons/8pool.png'},
  {'name': 'Access by KAI', 'icon': 'assets/icons/kai.png'},
  {'name': 'AirDroid Kids', 'icon': 'assets/images/airdroidkidss.png'},
  {'name': 'Authenticator', 'icon': 'assets/icons/aut.png'},
  {'name': 'bima+', 'icon': 'assets/icons/bima.png'},
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Applications',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'All Apps',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: dummyApps.length,
              itemBuilder: (context, index) {
                final app = dummyApps[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        app['icon']!,
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      app['name']!,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: Colors.grey,
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
