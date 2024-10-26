




//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatheer/cubits/get_weather_cubit/get_weather_cubit.dart';
//import 'package:weatheer/models/weather_model.dart';
//import 'package:weatheer/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
      
        title: Text('Searsh a city',
        
        ),
        
       ),
       
    body: Padding(
      padding: const EdgeInsets.symmetric(

        horizontal: 16   
      ),
      child: Center(
        child: TextField(
        onSubmitted: (value)  async{
      var getWeatherCubit=   BlocProvider.of<GetWeatherCubit>(context);
        getWeatherCubit.getWeather(cityNmae: value);
          Navigator.of(context).pop();
         },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            labelText: 'Search',
            suffixIcon:Icon(Icons.search) ,
            hintText: 'Enter City Name',
            
          border: OutlineInputBorder( 
          borderSide: BorderSide(
              color: Colors.green
            )
          ),
          
         
          ),
          
        ),
      ),
    ),

    );
  }
}

