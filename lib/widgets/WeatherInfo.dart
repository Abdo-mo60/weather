import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatheer/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatheer/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key });
  
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel= BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(weatherModel.cityNmae,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32
            ),
            ),
            Text('updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(
              fontSize: 24
            ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.network("https:${weatherModel.image}"),
            Text('${weatherModel.temp.toString()}',
            
            style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 32,
            ),),
            Column(
              children: [
                Text('Maxtemp: ${weatherModel.maxTemp.round()}',
                style: TextStyle(
                  fontSize: 16
                ),),
                Text('Maintemp: ${weatherModel.minTemp.round()}',
                style: TextStyle(
                  fontSize: 16),),
              ],
            ) 
    
                ],
  
  ),
  SizedBox(
    height: 32,
  ),

           Text('${weatherModel.weatherCondition}',
           
           style: TextStyle(
            fontWeight: FontWeight.bold
            ,
            fontSize: 32
           ),
           )
           ],
          
        
        ),
      ),
    );
  }
}

