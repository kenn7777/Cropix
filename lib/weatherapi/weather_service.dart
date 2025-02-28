import 'dart:convert';

import 'package:cropix/weatherapi/weather_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class WeatherService {


  static const BASE_URL ='http://api.openweathermap.org/data/2.5/weather';
  final String apiKey;

  WeatherService(this.apiKey);


  Future<WeatherModel> getWeather(String cityName) async {
    final response = await http.get(Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&units=metric'));

    if(response.statusCode == 200){
      return WeatherModel.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load weather data');
    }

  }

  Future<String> getCurrentCity() async {
     LocationPermission permission = await  Geolocator.checkPermission();

     if(permission == LocationPermission.denied) {
       permission = await Geolocator.requestPermission();
     }

     Position position = await Geolocator.getCurrentPosition(
       desiredAccuracy: LocationAccuracy.high);

     //
     List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);


     String? city = placemark[0].locality;

     return city ?? "";

  }

}