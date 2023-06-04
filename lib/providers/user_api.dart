import 'dart:convert';
import 'package:http/http.dart' as http;
import '/models/db.dart';
import 'package:geolocator/geolocator.dart';
import '/helpers/globals.dart' as globals;

Future<Map<String, dynamic>> login(String username, String password) async {
  final url = Uri.parse('${globals.api}/login/');
  final response = await http.post(url, body: {
    'username': username,
    'password': password,
  });

  print(response.statusCode);
  print(response.body);

  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    final token = responseData['token'];
    final user = responseData;
    user['sold'] = user['sold'].toDouble();
    user['token'] = token;
    return user;
  } else {
    globals.authString=response.body;
    throw Exception('Failed to log in');
  }
}

Future<Map<String, dynamic>> signUp(
    String matricule,
    String lastname,
    String firstname,
    String username,
    String email,
    String password,
    String gender) async {
  final url = Uri.parse('${globals.api}/sign-up/');
  final response = await http.post(url, body: {
    'matricule': matricule,
    'last_name': lastname,
    'first_name': firstname,
    'username': username,
    'email': email,
    'password': password,
    'gender': gender,
  });
  if (response.statusCode == 201) {
    final responseData = jsonDecode(response.body);
    final token = responseData['token'];
    final user = responseData;
    user['sold'] = user['sold'];
    user['token'] = token;
    return user;
  } else {
    throw Exception('Failed to sign up');
  }
}

Future<void> logout(String token) async {
  final url = Uri.parse('${globals.api}/logout/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.post(url, headers: headers);

  if (response.statusCode == 200) {
    // Delete the token from the local database
    await deleteToken();
  } else {
    throw Exception('Failed to logout: ${response.statusCode}');
  }
}

Future<void> sendPos(String token, Position position, int velo_id) async {
  final url = Uri.parse(
      '${globals.api}/user_pos/?lat=${position.latitude}&long=${position.longitude}&velo=${velo_id.toString()}');

  final headers = {'Authorization': 'Token $token'};

 try {

  final response = await http.get(url, headers: headers);
  if (response.statusCode == 200) {
    print('sent!\n');
    //print(response.body);
  } else {
    throw Exception(
        'Failed to send user pos: ${response.statusCode},${response.body}');
  }


} on Exception catch (e) {
  print('velo id :${velo_id}');
  print('ERRROR');
}
}
