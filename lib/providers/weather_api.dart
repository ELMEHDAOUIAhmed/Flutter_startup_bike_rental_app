import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherData {
  final double temperature;
  final String weatherCondition;

  WeatherData({@required this.temperature, @required this.weatherCondition});
}

class WeatherAPI {
  static Future<WeatherData> getWeather(double lat, double lon) async {
    final String url =
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&hourly=temperature_2m,weathercode';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final temperature = data['hourly'][0]['temperature_2m'].toDouble();
      final weatherCode = data['hourly'][0]['weathercode'];
      final weatherConditions = [
        'clear sky',
        'scattered clouds',
        'broken clouds',
        'overcast clouds',
        'light rain',
        'moderate rain',
        'heavy rain',
        'freezing rain',
        'light freezing rain',
        'moderate freezing rain',
        'heavy freezing rain',
        'sleet',
        'light sleet',
        'moderate sleet',
        'heavy sleet',
        'snow',
        'light snow',
        'moderate snow',
        'heavy snow',
        'fog',
        'light fog',
        'dense fog',
        'very dense fog',
        'high humidity',
        'humid',
        'dry',
        'very dry',
        'haze',
        'smoke',
        'dust or sand',
        'duststorm or sandstorm',
        'squalls',
        'tornado',
        'tropical storm',
        'hurricane',
        'cold',
        'hot',
        'hail',
      ];
      final weatherCondition = weatherConditions[weatherCode];
      return WeatherData(
          temperature: temperature, weatherCondition: weatherCondition);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
