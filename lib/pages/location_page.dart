import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMainPage extends StatefulWidget {
  const LocationMainPage({super.key});

  @override
  State<LocationMainPage> createState() => _LocationMainPageState();
}

class _LocationMainPageState extends State<LocationMainPage> {
  late GoogleMapController _mapController;

  final LatLng _deviceLocation = const LatLng(-6.920558, 109.648925);

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Google Maps
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _deviceLocation,
              zoom: 17,
            ),
            myLocationEnabled: false,
            zoomControlsEnabled: false,
            markers: {
              Marker(
                markerId: const MarkerId('device'),
                position: _deviceLocation,
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
              ),
            },
          ),

          /// Tombol Route History & Geofence
          Positioned(
            top: 60,
            right: 16,
            child: Column(
              children: [
                _topButton('Route History'),
                const SizedBox(height: 12),
                _topButton('Geofence'),
              ],
            ),
          ),

          /// Tombol Show my location
          Positioned(
            bottom: 180,
            right: 16,
            child: _floatingAction('Show my location', Icons.my_location),
          ),

          /// Info perangkat di bawah
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFE8F0FE),
                        child: Image.asset('assets/images/avatar.png', width: 30),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Samsung SM-A155F', style: TextStyle(fontWeight: FontWeight.w600)),
                            SizedBox(height: 4),
                            Text('Last updated: 15.29', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ),
                      const Icon(Icons.refresh, size: 20),
                      const SizedBox(width: 12),
                      Icon(Icons.send, size: 20),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Gg. 3A No.17, Banjiran, Kec. Warungasem,\nKabupaten Batang, Jawa Tengah 51252, Indonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(label),
    );
  }

  Widget _floatingAction(String label, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
    );
  }
}
