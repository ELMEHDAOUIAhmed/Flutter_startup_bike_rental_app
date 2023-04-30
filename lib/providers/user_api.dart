import 'dart:convert';
import 'package:http/http.dart' as http;
import '/models/db.dart';

Future<Map<String, dynamic>> login(String username, String password) async {
  final url = Uri.parse('http://192.168.100.7:8000/login/');
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
    throw Exception('Failed to log in');
  }
}

Future<Map<String, dynamic>> signUp(String matricule, String lastname,
    String firstname, String username, String email, String password) async {
  final url = Uri.parse('http://192.168.100.7:8000/sign-up/');
  final response = await http.post(url, body: {
    'matricule': matricule,
    'last_name': lastname,
    'first_name': firstname,
    'username': username,
    'email': email,
    'password': password,
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
  final url = Uri.parse('http://192.168.100.7:8000/logout/');
  final headers = {'Authorization': 'Token $token'};
  final response = await http.post(url, headers: headers);

  if (response.statusCode == 200) {
    // Delete the token from the local database
    await deleteToken();
  } else {
    throw Exception('Failed to logout: ${response.statusCode}');
  }
}
