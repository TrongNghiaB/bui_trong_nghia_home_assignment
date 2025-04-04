// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weathers_forecast_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeathersForecastRequestDataImpl _$$WeathersForecastRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WeathersForecastRequestDataImpl(
      cnt: (json['cnt'] as num?)?.toInt() ?? 5,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      apiKey: json['apiKey'] as String,
    );

Map<String, dynamic> _$$WeathersForecastRequestDataImplToJson(
        _$WeathersForecastRequestDataImpl instance) =>
    <String, dynamic>{
      'cnt': instance.cnt,
      'lat': instance.lat,
      'lon': instance.lon,
      'apiKey': instance.apiKey,
    };
