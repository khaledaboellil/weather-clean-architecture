import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_clean_architecture/core/utils/constances.dart';
import 'package:weather_clean_architecture/weather/data/model/weather_model.dart';

abstract class BaseRemoteDataSource{

  Future<WeatherModel?>getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async{

    try{
      var response = await Dio().get(
        '${AppConstances.baseUrl}/weather?q=$countryName&appid=${AppConstances.apiKey}'
      );
      print(response) ;
      return WeatherModel.fromJson(jsonDecode(response.data));
    }catch(e){
      return null ;
    }
  }
  
  
}