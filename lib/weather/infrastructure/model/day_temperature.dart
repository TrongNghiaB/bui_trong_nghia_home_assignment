import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_temperature.freezed.dart';
part 'day_temperature.g.dart';

@freezed
class DayTemperature with _$DayTemperature {
  const factory DayTemperature({
    required String day,
    required double currentTemp,
  }) = _DayTemperature;

  factory DayTemperature.fromJson(Map<String, dynamic> json) => _$DayTemperatureFromJson(json);
}
