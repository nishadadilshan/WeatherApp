import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weatherapp/data/my_data.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>((event, emit)  async {
      emit(WeatherLoading());
      try{
        print("APIKEY --->> $apikey");
        WeatherFactory wf = WeatherFactory( apikey, language: Language.ENGLISH);
        print("APIKEY --->> $event.position.latitude");
        print("APIKEY --->> $event.position.longitude");
        Weather weather = await wf.currentWeatherByLocation(event.position.latitude, event.position.longitude);
        print("APIKEY --->> $weather");
        emit(WeatherSuccess(weather));
      }catch (e){
        emit(WeatherFailure());
      }
    });
  }
}
