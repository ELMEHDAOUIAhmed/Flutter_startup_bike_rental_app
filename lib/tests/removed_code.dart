//    List<Marker> _markers;
//   _MapScreenNewState() : _markers = _getMarkers();

//  List<Marker> _getMarkers() {
//     return [
//       Marker(
//           markerId: MarkerId('1'),
//           position: LatLng(36.715957, 3.186346),
//           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//           infoWindow: InfoWindow(
//             title: 'Parking Enseignants',
//             snippet: 'Stock: 10',
//           ),
//           onTap: () {
//             _selectedMarkerId = '1';
//           }),
//       Marker(
//           markerId: MarkerId('2'),
//           position: LatLng(36.717171, 3.183816),
//           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//           infoWindow: InfoWindow(
//             title: 'Faculté De Mathematique',
//             snippet: 'Stock: 5',
//           ),
//           onTap: () {
//             _selectedMarkerId = '2';
//           }),
//       Marker(
//           markerId: MarkerId('3'),
//           position: LatLng(36.713483, 3.176465),
//           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//           infoWindow: InfoWindow(
//             title: 'Project Initiative Club',
//             snippet: 'Stock: 2',
//           ),
//           onTap: () {
//             _selectedMarkerId = '3';
//           }),
//       Marker(
//           markerId: MarkerId('4'),
//           position: LatLng(36.713716, 3.180834),
//           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//           infoWindow: InfoWindow(
//             title: 'Bibliothèque Universitaire',
//             snippet: 'Stock: 21',
//           ),
//           onTap: () {
//             _selectedMarkerId = '4';
//           }),
//     ];
//   }




// //WORKS LIKE A CHARM
//   void _setDestination(LatLng pos) async {
//     //before saving check if Lat Lang exist in list of markers go throught the list of markers
//     // still deosnt work but ..
//     if (true) {
//       // Save the lat and lng of the selected marker to the destination variable
//       _dest = Position(latitude: pos.latitude, longitude: pos.longitude);
//       _userDest = _dest;
//       _dest = null;

//       // For debug remove after!!
//       // print('Destination: $_dest');

//       //show that the succefully selected a station
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(48),
//             ),
//             title: Row(
//               children: const [
//                 //Icon(Icons.error, color: Colors.red),
//                 Icon(Icons.check_circle, color: Colors.green),
//                 SizedBox(width: 8.0),
//                 Flexible(
//                   fit: FlexFit.loose,
//                   child: Text(
//                       'Station successfully selected. Click on Take a ride. \n\nHint:Holding another Station will alter the selected one!!',
//                       style: TextStyle(fontSize: 16.0)),
//                 ),
//               ],
//             ),
//           );
//         },
//       );
//     } else {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(48),
//             ),
//             title: Row(
//               children: const [
//                 //Icon(Icons.error, color: Colors.red),
//                 Icon(Icons.error, color: Colors.red),
//                 SizedBox(width: 8.0),
//                 Flexible(
//                   fit: FlexFit.loose,
//                   child: Text(
//                       'Not a Valid Station ! \nTry Again  \n\n Hint : Click on a station before Holding',
//                       style: TextStyle(fontSize: 16.0)),
//                 ),
//               ],
//             ),
//           );
//         },
//       );
//     }
//   }


// add these permission in main better


  // Future<Position> _determinePosition() async {
  //   // Commented because i'm asking permission in main.dart
  //   // bool serviceEnabled;
  //   // LocationPermission permission;

  //   // serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   // if (!serviceEnabled) return Future.error('Location services are disabled!');
  //   // permission = await Geolocator.checkPermission();
  //   // if (permission == LocationPermission.denied) {
  //   //   permission = await Geolocator.requestPermission();

  //   //   if (permission == LocationPermission.denied) {
  //   //     return Future.error("Location permission denied ");
  //   //   }
  //   // }

  //   // if (permission == LocationPermission.deniedForever) {
  //   //   return Future.error("Location permission are permanentely denied.! ");
  //   // }

  //   Position position = await Geolocator.getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.best,
  //     timeLimit: const Duration(seconds: 10),
  //   );

  //   return position;
  // }