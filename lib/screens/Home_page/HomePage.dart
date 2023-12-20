
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_setup/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app_setup/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app_setup/widget/No_Weather_body.dart';
import 'package:weather_app_setup/screens/SearchView.dart';
import 'package:weather_app_setup/widget/Weather_Info_body.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: (){
              showDialog(context: context,builder:(context){
                return const SearchView();
              });
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context, state) {
          if(state is WeatherInitialState){
            return const NoWeatherBody();
          }else if(state is WeatherLoadedState){
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          }else{
            return const  Text("oops try later");
          }
        },
      ),
    );
  }
}

//create state
//create cubit
//create function
//provide cubit
//integrate cubit
//trigger cubit
