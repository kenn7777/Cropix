import 'dart:convert';
import 'package:cropix/pages/weathermodel.dart';
import 'package:http/http.dart' as http;


class WeatherService {
  static const BASE_URL = 'http://api.openweathermap.org/data/2.5/forecast';
  final String apiKey;

  WeatherService(this.apiKey);

  Future<WeatherModel> getWeather(String cityName) async {
    final response = await http.get(Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&units=metric'));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
