import 'dart:convert';
import 'package:http/http.dart' as http;



Future<double> refillSold(String token, String voucher) async {
  final url = Uri.parse('https://hebhoubtarek.pythonanywhere.com/sold/');
  final headers = {'Authorization': 'Token $token'};
  final body = {'token': voucher};
  final response = await http.post(url, headers: headers, body: body);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final double sold = data['sold'];
    return sold;
  } else {
    throw Exception('Failed to retrieve sold: ${response.statusCode}');
  }
}


