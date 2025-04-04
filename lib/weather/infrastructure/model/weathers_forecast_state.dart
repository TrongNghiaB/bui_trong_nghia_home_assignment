import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/day_temperature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weathers_forecast_state.freezed.dart';

@freezed
class WeathersState with _$WeathersState {
  const WeathersState._();
  const factory WeathersState.initial() = _Initial;
  const factory WeathersState.loading() = _Loading;
  const factory WeathersState.data(List<DayTemperature> listDayTemperatures, String cityName) = _WeathersData;
  const factory WeathersState.failure({String? message, int? codeName}) = _Failure;
}
