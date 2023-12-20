
import 'package:weather_app_setup/models/Weather_Model.dart';

class WeatherState{

}

class WeatherInitialState extends WeatherState{}

class WeatherLoadedState extends WeatherState{
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}

class WeatherFailurState extends WeatherState{
  final String errorMessage;

  WeatherFailurState(this.errorMessage);

}