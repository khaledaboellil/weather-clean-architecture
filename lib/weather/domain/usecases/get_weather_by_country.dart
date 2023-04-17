import 'package:weather_clean_architecture/weather/domain/entities/weather.dart';
import 'package:weather_clean_architecture/weather/domain/repositery/base_weather_repository.dart';

class GetWeatherByCityName{

  final BaseWeatherRepository repositery ;

  GetWeatherByCityName(this.repositery);

  Future<Weather>excute(String cityName)async {
    return await repositery.getWeatherByCityName(cityName) ;
  }
}