import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app_setup/models/Weather_Model.dart';

class WeatherService{
 final Dio dio;
 WeatherService(this.dio);


 static const _baseLine='https://api.weatherapi.com/v1';
 static const _apiKey='aeaaa2d61c034ab6943140043232111';

   Future<WeatherModel> getWeatherNow({required String cityName})async{
     try{
       Response response= await dio.get('$_baseLine/forecast.json?key=$_apiKey&q=$cityName&days=1');
       WeatherModel weatherModel = WeatherModel.fromJson(response.data);
       return weatherModel;
     } on DioException catch(e){
       final String errorMessage=e.response?.data['error']['message'] ??'Oops there was an error, Try later';
       throw Exception(errorMessage);
     }catch(e){
       log(e.toString());
       throw Exception('Oops there was an error, Try later');
     }

   }
}