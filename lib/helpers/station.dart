import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

Future<List<Marker>> fetchStations(String token) async {
  final ByteData imageData =
      await rootBundle.load('assets/icons/bike-parking.png');
  final Uint8List pngBytes = imageData.buffer.asUint8List();
  final BitmapDescriptor customIcon = BitmapDescriptor.fromBytes(pngBytes);

  final url = Uri.parse('http://192.168.100.7:8000/stations/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.get(url, headers: headers);

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    final List<Marker> markers = data
        .map((station) => Marker(
              markerId: MarkerId(station['id'].toString()),
              position: LatLng(station['latitude'], station['longitude']),
              icon: customIcon,
              // BitmapDescriptor.defaultMarkerWithHue(
              //     BitmapDescriptor.hueRed),
              infoWindow: InfoWindow(
                title: station['name'],
                snippet: 'Stock: ${station['stock']}',
              ),
            ))
        .toList();
    return markers;
  } else {
    print('Failed to fetch stations');
    List<Marker> markers;
    return markers = [
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

//reservation of bike
Future<void> reserveBike(String token, int stationId) async {
  final url = Uri.parse('http://192.168.100.7:8000/reserver/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.post(url,
      body: {
        'station': stationId,
      },
      headers: headers);

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    print('Bike Reserved');
    //next i retrun velo informations in here
  } else {
    throw Exception('Failed to Reserve Bike!');
  }
}

Future<void> takeBike(String token) async {
  final url = Uri.parse('http://192.168.100.7:8000/locate/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.post(url, headers: headers);

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    print('Bike taken');
    //next i retrun velo informations in here
  } else {
    throw Exception('Failed to take Bike!');
  }
}

Future<void> returnBike(String token, int stationId) async {
  final url = Uri.parse('http://192.168.100.7:8000/locate/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.put(url,
      body: {
        'station': stationId,
      },
      headers: headers);

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    print('Bike Returned to Station : $stationId');
    // return price
  } else {
    throw Exception('Failed to return Bike!');
  }
}

void cancelRideAPI(){
  
}
