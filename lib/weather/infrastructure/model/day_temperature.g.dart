// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayTemperatureImpl _$$DayTemperatureImplFromJson(Map<String, dynamic> json) =>
    _$DayTemperatureImpl(
      day: json['day'] as String,
      currentTemp: (json['currentTemp'] as num).toDouble(),
    );

Map<String, dynamic> _$$DayTemperatureImplToJson(
        _$DayTemperatureImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'currentTemp': instance.currentTemp,
    };
