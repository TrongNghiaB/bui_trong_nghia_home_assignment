import 'package:bui_trong_nghia_home_assignment/core/domain/failure.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weather_forecast_response.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weathers_forecast_request.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class WeathersForecastService {
  final Dio dio;
  WeathersForecastService(this.dio);

  Future<Either<ApiFailure, WeatherForecastResponse>> getWeathersForecast(WeathersForecastRequest request) async {
    try {
      final response = await dio.post(
        "forecast/daily",
        queryParameters: {
          "lat": request.lat,
          "lon": request.lon,
          "cnt": request.cnt, // Number of days in forecast
          "appid": request.apiKey,
          "units": "metric", // Get temperature in Celsius
        },
      );

      try {
        return right(WeatherForecastResponse.fromJson(response.data));
      } on Exception catch (_) {
        throw Exception('Error when parse data');
      }
    } on DioException catch (e) {
      return left(ApiFailure.server(message: e.message));
    } catch (e) {
      return left(ApiFailure.server(message: e.toString()));
    }
  }
}
