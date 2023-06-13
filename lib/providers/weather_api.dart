import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchWeatherData() async {
  final response = await http.get(
    Uri.parse('https://weatherapi-com.p.rapidapi.com/current.json?q=36.711903%2C%203.180181'),
    headers: {
      'content-type': 'application/octet-stream',
      'X-RapidAPI-Key': '4fd077ca0emsha388dfbab854d1bp15a2d1jsnc9346074544b',
      'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
    },
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch data');
  }
}
