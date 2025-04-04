// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayTemperature _$DayTemperatureFromJson(Map<String, dynamic> json) {
  return _DayTemperature.fromJson(json);
}

/// @nodoc
mixin _$DayTemperature {
  String get day => throw _privateConstructorUsedError;
  double get currentTemp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayTemperatureCopyWith<DayTemperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTemperatureCopyWith<$Res> {
  factory $DayTemperatureCopyWith(
          DayTemperature value, $Res Function(DayTemperature) then) =
      _$DayTemperatureCopyWithImpl<$Res, DayTemperature>;
  @useResult
  $Res call({String day, double currentTemp});
}

/// @nodoc
class _$DayTemperatureCopyWithImpl<$Res, $Val extends DayTemperature>
    implements $DayTemperatureCopyWith<$Res> {
  _$DayTemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? currentTemp = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: null == currentTemp
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayTemperatureImplCopyWith<$Res>
    implements $DayTemperatureCopyWith<$Res> {
  factory _$$DayTemperatureImplCopyWith(_$DayTemperatureImpl value,
          $Res Function(_$DayTemperatureImpl) then) =
      __$$DayTemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, double currentTemp});
}

/// @nodoc
class __$$DayTemperatureImplCopyWithImpl<$Res>
    extends _$DayTemperatureCopyWithImpl<$Res, _$DayTemperatureImpl>
    implements _$$DayTemperatureImplCopyWith<$Res> {
  __$$DayTemperatureImplCopyWithImpl(
      _$DayTemperatureImpl _value, $Res Function(_$DayTemperatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? currentTemp = null,
  }) {
    return _then(_$DayTemperatureImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: null == currentTemp
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayTemperatureImpl implements _DayTemperature {
  const _$DayTemperatureImpl({required this.day, required this.currentTemp});

  factory _$DayTemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayTemperatureImplFromJson(json);

  @override
  final String day;
  @override
  final double currentTemp;

  @override
  String toString() {
    return 'DayTemperature(day: $day, currentTemp: $currentTemp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayTemperatureImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.currentTemp, currentTemp) ||
                other.currentTemp == currentTemp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, currentTemp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayTemperatureImplCopyWith<_$DayTemperatureImpl> get copyWith =>
      __$$DayTemperatureImplCopyWithImpl<_$DayTemperatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayTemperatureImplToJson(
      this,
    );
  }
}

abstract class _DayTemperature implements DayTemperature {
  const factory _DayTemperature(
      {required final String day,
      required final double currentTemp}) = _$DayTemperatureImpl;

  factory _DayTemperature.fromJson(Map<String, dynamic> json) =
      _$DayTemperatureImpl.fromJson;

  @override
  String get day;
  @override
  double get currentTemp;
  @override
  @JsonKey(ignore: true)
  _$$DayTemperatureImplCopyWith<_$DayTemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
