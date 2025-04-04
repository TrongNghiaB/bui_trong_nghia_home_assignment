// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weathers_forecast_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeathersForecastRequest _$WeathersForecastRequestFromJson(
    Map<String, dynamic> json) {
  return WeathersForecastRequestData.fromJson(json);
}

/// @nodoc
mixin _$WeathersForecastRequest {
  int get cnt => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get apiKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeathersForecastRequestCopyWith<WeathersForecastRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeathersForecastRequestCopyWith<$Res> {
  factory $WeathersForecastRequestCopyWith(WeathersForecastRequest value,
          $Res Function(WeathersForecastRequest) then) =
      _$WeathersForecastRequestCopyWithImpl<$Res, WeathersForecastRequest>;
  @useResult
  $Res call({int cnt, double lat, double lon, String apiKey});
}

/// @nodoc
class _$WeathersForecastRequestCopyWithImpl<$Res,
        $Val extends WeathersForecastRequest>
    implements $WeathersForecastRequestCopyWith<$Res> {
  _$WeathersForecastRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cnt = null,
    Object? lat = null,
    Object? lon = null,
    Object? apiKey = null,
  }) {
    return _then(_value.copyWith(
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeathersForecastRequestDataImplCopyWith<$Res>
    implements $WeathersForecastRequestCopyWith<$Res> {
  factory _$$WeathersForecastRequestDataImplCopyWith(
          _$WeathersForecastRequestDataImpl value,
          $Res Function(_$WeathersForecastRequestDataImpl) then) =
      __$$WeathersForecastRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cnt, double lat, double lon, String apiKey});
}

/// @nodoc
class __$$WeathersForecastRequestDataImplCopyWithImpl<$Res>
    extends _$WeathersForecastRequestCopyWithImpl<$Res,
        _$WeathersForecastRequestDataImpl>
    implements _$$WeathersForecastRequestDataImplCopyWith<$Res> {
  __$$WeathersForecastRequestDataImplCopyWithImpl(
      _$WeathersForecastRequestDataImpl _value,
      $Res Function(_$WeathersForecastRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cnt = null,
    Object? lat = null,
    Object? lon = null,
    Object? apiKey = null,
  }) {
    return _then(_$WeathersForecastRequestDataImpl(
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeathersForecastRequestDataImpl implements WeathersForecastRequestData {
  const _$WeathersForecastRequestDataImpl(
      {this.cnt = 5,
      required this.lat,
      required this.lon,
      required this.apiKey});

  factory _$WeathersForecastRequestDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WeathersForecastRequestDataImplFromJson(json);

  @override
  @JsonKey()
  final int cnt;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String apiKey;

  @override
  String toString() {
    return 'WeathersForecastRequest(cnt: $cnt, lat: $lat, lon: $lon, apiKey: $apiKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeathersForecastRequestDataImpl &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cnt, lat, lon, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeathersForecastRequestDataImplCopyWith<_$WeathersForecastRequestDataImpl>
      get copyWith => __$$WeathersForecastRequestDataImplCopyWithImpl<
          _$WeathersForecastRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeathersForecastRequestDataImplToJson(
      this,
    );
  }
}

abstract class WeathersForecastRequestData implements WeathersForecastRequest {
  const factory WeathersForecastRequestData(
      {final int cnt,
      required final double lat,
      required final double lon,
      required final String apiKey}) = _$WeathersForecastRequestDataImpl;

  factory WeathersForecastRequestData.fromJson(Map<String, dynamic> json) =
      _$WeathersForecastRequestDataImpl.fromJson;

  @override
  int get cnt;
  @override
  double get lat;
  @override
  double get lon;
  @override
  String get apiKey;
  @override
  @JsonKey(ignore: true)
  _$$WeathersForecastRequestDataImplCopyWith<_$WeathersForecastRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
