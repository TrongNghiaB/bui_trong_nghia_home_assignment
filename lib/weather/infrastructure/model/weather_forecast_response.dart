import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_response.freezed.dart';
part 'weather_forecast_response.g.dart';

@freezed
class WeatherForecastResponse with _$WeatherForecastResponse {
  const factory WeatherForecastResponse({
    required List<Forecast> list,
  }) = _WeatherForecastResponse;

  factory WeatherForecastResponse.fromJson(Map<String, dynamic> json) => _$WeatherForecastResponseFromJson(json);
}

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required Temperature temp,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);
}

@freezed
class Temperature with _$Temperature {
  const factory Temperature({
    required double day,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) => _$TemperatureFromJson(json);
}
