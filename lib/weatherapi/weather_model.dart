



class WeatherModel {

  final String cityname;
  final double temperature;
  final String mainCondtion;

  WeatherModel({required this.cityname, required this.temperature, required this.mainCondtion,});


  factory WeatherModel.fromJson(Map<String, dynamic> json){
    return WeatherModel(
        cityname: json['name'],
        temperature: json['main']['temp'].toDouble(),
        mainCondtion: json['weather'][0]['main'],
    );
  }
}