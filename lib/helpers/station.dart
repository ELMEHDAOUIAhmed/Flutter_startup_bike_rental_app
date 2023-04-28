import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

Future<List<Marker>> fetchStations() async {
  final url = Uri.parse('http://192.168.100.7:8000/stations/');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    final List<Marker> markers = data.map((station) => Marker(
      markerId: MarkerId(station['id'].toString()),
      position: LatLng(station['latitude'], station['longitude']),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: station['name'],
        snippet: 'Stock: 10',
        //Stock: ${station['stock']}
      ),
    )).toList();
    return markers;
  } else {
    print('Failed to fetch stations');
    List<Marker> markers;
    return   
    markers = [
    Marker(
      markerId: MarkerId('9999'),
      position: LatLng(36.712067, 3.181122),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: 'Bike Rental APP',
        snippet: 'Stock: 0',
      ),
    ),
  ];
    
  }
}