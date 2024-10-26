import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatheer/models/weather_model.dart';


class WeatherServices{
  final Dio dio;


  final String baseUrl = 'https://api.weatherapi.com/v1'; 
  final String apiKay ='a9897bab1c4a4fa585d195221242807';
  WeatherServices(this.dio);
  Future< WeatherModel> getCurrentWeather ({
    required String cityNmae 
  }) async{
    try{
  Response response =   await dio.get( 
  '$baseUrl/forecast.json?key=$apiKay&q=$cityNmae&days=1'); 
  
  WeatherModel weatherModel = WeatherModel.fromJson(response.data);

  return weatherModel;
  }
  on DioException  catch (e) {
    final String errMassage = e.response?.data['error']['message'] ?? 'opps there was an error, try later';
          throw Exception(errMassage);
          
    }
    catch (e){
      log(e.toString());
      throw Exception('oops there was an error, try later');
    }
  }  
} 