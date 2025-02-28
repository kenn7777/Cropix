// WeatherForecastPage
import 'package:cropix/pages/weatherservice.dart';
import 'package:cropix/pages/weathermodel.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

// WeatherForecastPage
class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  final _weatherService = WeatherService('2fc8c40dab5587563cd8f6fe1515d684');
  WeatherModel? _weather;

  Future<void> _fetchWeather() async {
    String cityName = await getCurrentCity();
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  Future<String> getCurrentCity() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    String? city = placemarks[0].locality;

    return city ?? "";
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'images/sunny.json';

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'fog':
        return 'images/weathercloud.json';
      case 'clear':
        return 'images/weatherclear.json';
      case 'rain':
      case 'drizzle':
        return 'images/weatherrain.json';
      case 'thunderstorm':
        return 'images/weatherthunderstorm.json';
      default:
        return 'images/weathersunny.json';
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //backgroundColor: Theme.of(context).colorScheme.surface,
       backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Weather Forecast',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: _weather == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _weather!.forecasts.length,
        itemBuilder: (context, index) {
          final forecast = _weather!.forecasts[index];
          bool isNotIdealToSpray = forecast.mainCondition.toLowerCase() == 'rain' || forecast.mainCondition.toLowerCase() == 'thunderstorm';
          bool isIdealToSpray = forecast.mainCondition.toLowerCase() == 'clear' || forecast.mainCondition.toLowerCase() == 'clouds';

          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.green[50],  // Add a background color here
            elevation: 4, // Optional: Add a shadow for better elevation
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${forecast.dateTime.day}/${forecast.dateTime.month} ${forecast.dateTime.hour}:00',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                          Text(
                            '${forecast.temperature.round()}°C',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      Lottie.asset(getWeatherAnimation(forecast.mainCondition), width: 70, height: 70),
                    ],
                  ),
                  if (isNotIdealToSpray)
                     Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Not Ideal To Spray Insecticide\n'
                            'Aphids are likely to attack in this kind of weather.',
                        style: GoogleFonts.poppins(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (isIdealToSpray)
                     Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'It\'s Ideal to Spray Insecticide\n'
                            'Aphids and Cutworms are likely to attack in this kind of weather.',
                        style: GoogleFonts.poppins(color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ),
          );

        },
      ),
    );
  }
}

//add background color to CARD