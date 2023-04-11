import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> login(String username, String password) async {

    final url = Uri.parse('http://192.168.100.7:8000/login/');
    final response = await http.post(url, body: {
      'username': username,
      'password': password,
    });

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      final token = jsonDecode(response.body)['token'];
      return token;
    } else {
      throw Exception('Failed to log in');
    }
}

Future<String> signUp(String matricule, String lastname, String firstname, String username,String email, String password) async {
  final url = Uri.parse('http://192.168.100.7:8000/sign-up/');
  final response = await http.post(url, body: {
    'matricule': matricule,
    'last_name': lastname,
    'first_name': firstname,
    'username': username,
    'email' : email,
    'password': password,
  });

  if (response.statusCode == 201) {
    final token = jsonDecode(response.body)['token'];
    return token;
  } else {
    throw Exception('Failed to sign up');
  }
}


