import 'package:weather_clean_architecture/weather/data/datasource/remote_data_source.dart';
import 'package:weather_clean_architecture/weather/domain/entities/weather.dart';
import 'package:weather_clean_architecture/weather/domain/repositery/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{

  final BaseRemoteDataSource remoteDataSource ;

  WeatherRepository(this.remoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String cityName) async{

      return (await remoteDataSource.getWeatherByCountryName(cityName))!;
  }

}