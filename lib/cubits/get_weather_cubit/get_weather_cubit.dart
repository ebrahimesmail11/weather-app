import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_setup/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app_setup/models/Weather_Model.dart';
import 'package:weather_app_setup/services/weather_services.dart';


class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit(): super(WeatherInitialState()) ;
   WeatherModel? weatherModel;
  getWeather({required String cityName})async{
   try{
      weatherModel=await  WeatherService(Dio()).getWeatherNow(cityName: cityName);
     emit(WeatherLoadedState( weatherModel!));
   }catch(e){
     emit(WeatherFailurState(
       e.toString(),
     ));
   }

  }
}