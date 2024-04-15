// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart' as loc;
// import 'dart:async';

// class GoogleMaps extends StatefulWidget {
//   const GoogleMaps({Key? key}) : super(key: key);

//   @override
//   _GoogleMapsState createState() => _GoogleMapsState();
// }

// class _GoogleMapsState extends State<GoogleMaps> {
//   late GoogleMapController mapController;
//   loc.LocationData? _locationData;
//   loc.Location _location = loc.Location();
//   StreamSubscription<loc.LocationData>? _locationSubscription;

//   @override
//   void initState() {
//     super.initState();
//     _locationSubscription =
//         _location.onLocationChanged.listen((loc.LocationData result) {
//       setState(() {
//         _locationData = result;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _locationSubscription?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Maps Integration'),
//       ),
//       body: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.7749, -122.4194), // Initial map center position (San Francisco)
//           zoom: 12.0, // Initial zoom level
//         ),
//         myLocationEnabled: true, // Enable My Location button
//         myLocationButtonEnabled: true, // Enable My Location button
//       ),
//     );
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     setState(() {
//       mapController = controller;
//     });
//   }
// }



// // AIzaSyBRmastaEpUm9AB54j5m3nAYpNrrxC2FEM