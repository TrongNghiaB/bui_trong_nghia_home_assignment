import 'package:bui_trong_nghia_home_assignment/core/shared/providers.dart';
import 'package:bui_trong_nghia_home_assignment/weather/application/weather_notifier.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weathers_forecast_state.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/repository/weathers_forecast_repository.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/services/weathers_forecast_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final weathersForecastServiceProvider = Provider.autoDispose<WeathersForecastService>((ref) {
  return WeathersForecastService(ref.watch(dioProvider));
});

final weathersForecastRepositoryProvider = Provider<WeathersForecastRepository>((ref) {
  return WeathersForecastRepository(ref.watch(weathersForecastServiceProvider));
});

final weathersForecastProvider = StateNotifierProvider<WeathersStateNotifier, WeathersState>((ref) {
  return WeathersStateNotifier(ref.watch(weathersForecastRepositoryProvider));
});
