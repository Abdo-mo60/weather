import 'package:weatheer/models/weather_model.dart';

class WeatherState {
  
}

class InitialState extends WeatherState {
  
  
}
class WeatherLoadedState  extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});
}
class WeatherFailureState  extends WeatherState {
  final String errMessage;

  WeatherFailureState({ required this.errMessage});
  
}
