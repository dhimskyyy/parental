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

          Positioned(
            top: 60,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _topButton('Route History'),
                const SizedBox(width: 12),
                _topButton('Geofence'),
              ],
            ),
          ),

          Positioned(
            bottom: 160,
            right: 16,
            child: _floatingAction('Show my location', Icons.my_location),
          ),

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Image.asset('assets/images/people.png', width: 32),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Samsung SM-A155F',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.access_time, size: 14, color: Colors.grey),
                                SizedBox(width: 4),
                                Text(
                                  'Last updated: 15.29',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.refresh, size: 20),
                      const SizedBox(width: 12),
                      Icon(Icons.send, size: 20),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Gg. 3A No.17, Banjiran, Kec. Warungasem,\nKabupaten Batang, Jawa Tengah 51252, Indonesia',
                    textAlign: TextAlign.left,
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
    );
  }
}
