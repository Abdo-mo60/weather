import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatheer/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatheer/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weatheer/views/search_view.dart';
import 'package:weatheer/widgets/WeatherInfo.dart';
import 'package:weatheer/widgets/no_wether_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text(' Weather app'),
                  actions: [
          IconButton( icon: Icon(Icons.search ),
          
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context){
                  return SearchView();
            },),);
          },)
        ],
      ),
      body:  BlocBuilder<GetWeatherCubit, WeatherState>(
      builder:(context, State) {
        if (State is InitialState){
          return NoWether();
        }
        else if ( State is WeatherLoadedState){
          return WeatherInfo(
            
          );
        }
        else {
          return Center(
            child: Text('opps there was an error',
            style: TextStyle(
              fontSize: 28
            ),
            ),
          );
        }
      }, 

      ),
      
    );
  }
}

// create states
// create cubit 
// create function 
// provide cubit
// integrate cubit 
// trigger cubit