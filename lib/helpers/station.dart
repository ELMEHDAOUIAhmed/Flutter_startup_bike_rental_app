import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import '/helpers/globals.dart' as globals;
import 'package:dio/dio.dart';
import '/models/db.dart';

Future<List<Marker>> fetchStations(String? token) async {
  final ByteData imageData =
      await rootBundle.load('assets/icons/bike-parking.png');
  final Uint8List pngBytes = imageData.buffer.asUint8List();
  final BitmapDescriptor customIcon = BitmapDescriptor.fromBytes(pngBytes);

  final url = Uri.parse('${globals.api}/stations/');
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
// Future<void> reserveBike(String token, int id) async {
//   final url = Uri.parse('https://hebhoubtarek.pythonanywhere.com/reserver/?station=${id}');
//   final headers = {'Authorization': 'Token $token'};
//   final response =
//       await http.get(url, headers: headers);

//     final responseData = jsonDecode(response.body);
//     globals.velo_name = responseData['velo_name'];
//     globals.velo_password = responseData['velo_code'];
//     globals.velo_id = responseData['id'];

//     print(globals.velo_name);
//     print(globals.velo_password);
//     print(globals.velo_id);

// }

Future<void> reserveBike(String? token, int? id) async {
  // ignore: prefer_const_declarations
  final url = '${globals.api}/reserver/';

  final dio = Dio();
  dio.options.headers = {'Authorization': 'Token $token'};

  try {
    final response = await dio.post(url, data: {'station': id.toString()});

    if (response.statusCode == 200) {
      globals.response='Success';
      final responseData = response.data;
      globals.velo_name = responseData['velo_name'];
      globals.velo_password = responseData['velo_code'];
      globals.velo = responseData['velo'];

      print('name: ${globals.velo_name}');
      print('password: ${globals.velo_password}');
      print('id : ${globals.velo}');
      

    } else {
      globals.response='Error';
      throw Exception('Failed to get bike: ${response.statusCode}');
    }
  } catch (e) {
    globals.response='Error';
    throw Exception('Failed to get bike: $e');
  }
}

//cancel ride

Future<void> cancelBike(String? token,int? id) async {
  final url = Uri.parse('${globals.api}/reserver/');
  final headers = {'Authorization': 'Token $token'};

  final response = await http.delete(url,body:{'station':id.toString()}, headers: headers);

  if (response.statusCode == 200) {
    //final responseData = jsonDecode(response.body);
    globals.velo_name = '';
    globals.velo_password=0;
    globals.velo = -1;
    print('canceled ride');
  } else {
    throw Exception('Failed to cancel bike: ${response.statusCode}');
  }
}



Future<void> takeBike(String? token) async {
  final url = Uri.parse('${globals.api}/alocate/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.post(url, headers: headers);

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    print('Bike taken');
    //next i retrun velo informations in here
  } else {
    throw Exception('Failed!');
  }
}

//return bike at the end of ride

Future<void> returnBike(String? token, String? stationId) async {
  final url = Uri.parse('${globals.api}/alocate/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.delete(url,
      body: {
        'station': stationId,
      },
      headers: headers);

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    // return price
    final responseData = jsonDecode(response.body);
    globals.total_price = responseData['price'];
    globals.new_solde = responseData['sold'];
    updateUserSold(globals.new_solde!.toDouble());
  

    print('Bike Returned to Station : $stationId');
  } else {
    throw Exception('Failed to return Bike!');
  }
}

void cancelRideAPI() {}
