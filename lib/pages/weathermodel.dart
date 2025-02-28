// WeatherModel
class WeatherModel {
  final String cityName;
  final List<Forecast> forecasts;

  WeatherModel({required this.cityName, required this.forecasts});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var forecastList = json['list'] as List;
    List<Forecast> forecasts = forecastList
        .map((forecast) => Forecast.fromJson(forecast))
        .toList();

    return WeatherModel(
      cityName: json['city']['name'],
      forecasts: forecasts,
    );
  }
}

class Forecast {
  final DateTime dateTime;
  final double temperature;
  final String mainCondition;

  Forecast({required this.dateTime, required this.temperature, required this.mainCondition});

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      dateTime: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
