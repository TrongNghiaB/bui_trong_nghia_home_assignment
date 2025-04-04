import 'package:bui_trong_nghia_home_assignment/core/domain/failure.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weather_forecast_response.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weathers_forecast_request.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/services/weathers_forecast_service.dart';
import 'package:dartz/dartz.dart';

class WeathersForecastRepository {
  final WeathersForecastService service;
  WeathersForecastRepository(this.service);

  Future<Either<ApiFailure, WeatherForecastResponse>> getWeathersForecast(WeathersForecastRequest request) async {
    return await service.getWeathersForecast(request);
  }
}
