import 'package:freezed_annotation/freezed_annotation.dart';

part 'weathers_forecast_request.freezed.dart';
part 'weathers_forecast_request.g.dart';

@freezed
class WeathersForecastRequest with _$WeathersForecastRequest {
  const factory WeathersForecastRequest({
    @Default(5) int cnt,
    required double lat,
    required double lon,
    required String apiKey,
  }) = WeathersForecastRequestData;

  factory WeathersForecastRequest.fromJson(Map<String, dynamic> json) => _$WeathersForecastRequestFromJson(json);
}
