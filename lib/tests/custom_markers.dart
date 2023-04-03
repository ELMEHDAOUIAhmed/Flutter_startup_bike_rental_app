
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class CustomMarker {
  final MarkerId id;
  final LatLng position;
  final Icon icon;
  final String title;
  final String snippet;
  final VoidCallback onLongPress;

  CustomMarker({
    @required this.id,
    @required this.position,
    @required this.icon,
    @required this.title,
    @required this.snippet,
    @required this.onLongPress,
  });
}





  // final List<Marker> _markers = [
  //   Marker(
  //     markerId: MarkerId('marker1'),
  //     position: LatLng(36.715957, 3.186346),
  //     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  //     infoWindow: InfoWindow(
  //       title: 'Parking Enseignants ',
  //       snippet: 'Stock: 10',
  //     ),
  //   ),
    
  //   Marker(
  //     markerId: MarkerId('marker2'),
  //     position: LatLng(36.717171, 3.183816),
  //     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  //     infoWindow: InfoWindow(
  //       title: 'Faculté De Mathematique',
  //       snippet: 'Stock: 5',
  //     ),
  //   ),
  //   Marker(
  //     markerId: MarkerId('marker3'),
  //     position: LatLng(36.713483, 3.176465),
  //     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  //     infoWindow: InfoWindow(
  //       title: 'Project Initiative Club',
  //       snippet: 'Stock: 2',
  //     ),
  //   ),
  //   Marker(
  //     markerId: MarkerId('marker4'),
  //     position: LatLng(36.713716, 3.180834),
  //     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  //     infoWindow: InfoWindow(
  //       title: 'Bibliothèque Universitaire',
  //       snippet: 'Stock: 21',
  //     ),
  //   ),
  // ];
