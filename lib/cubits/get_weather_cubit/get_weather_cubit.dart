import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatheer/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weatheer/models/weather_model.dart';
import 'package:weatheer/services/weather_service.dart';
//import 'package:weatheer/views/search_view.dart';

class GetWeatherCubit extends Cubit<WeatherState>
{
  GetWeatherCubit() : super(InitialState());
    WeatherModel ?weatherModel;
  getWeather({required String cityNmae}) async{
  try {
   weatherModel= await   WeatherServices(Dio())
      .getCurrentWeather(cityNmae: cityNmae);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
} 
  catch (e)
    {
      emit(WeatherFailureState(
        errMessage: ''
        
      ));
    }
  }
} 