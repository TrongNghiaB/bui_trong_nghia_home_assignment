import 'package:bui_trong_nghia_home_assignment/core/utils/datetime_util.dart';
import 'package:bui_trong_nghia_home_assignment/core/utils/location_util.dart';
import 'package:bui_trong_nghia_home_assignment/core/utils/util.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/day_temperature.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weathers_forecast_request.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weathers_forecast_state.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/repository/weathers_forecast_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geocoding/geocoding.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeathersStateNotifier extends StateNotifier<WeathersState> {
  final WeathersForecastRepository weathersForecastRepository;
  bool _processing = false;
  WeathersStateNotifier(this.weathersForecastRepository) : super(const WeathersState.initial()) {
    getWeathersForecast();
  }

  Future<void> getWeathersForecast() async {
    if (_processing) return;
    _processing = true;
    state = const WeathersState.loading();
    final currentLocation = await LocationUtil().getCurrentLocation();
    currentLocation.fold(
      (l) {
        state = WeathersState.failure(codeName: l.code, message: l.message);
      },
      (r) async {
        const cnt = 5;
        final apiKey = dotenv.env['API_KEY'] ?? '';
        final request = WeathersForecastRequest(
          apiKey: apiKey,
          lat: r.latitude,
          lon: r.longitude,
          cnt: cnt,
        );

        //get city name
        final placeMarks = await placemarkFromCoordinates(r.latitude, r.longitude);
        final firstPlaceMarksItem = placeMarks.first.locality ?? placeMarks.first.subLocality ?? placeMarks.first.thoroughfare;
        final cityName = firstPlaceMarksItem.hasValue() ? firstPlaceMarksItem! : "Unknown City";

        final res = await weathersForecastRepository.getWeathersForecast(request);
        state = res.fold(
          (l) => WeathersState.failure(codeName: l.code, message: l.message),
          (r) {
            final listForeCast = r.list;
            final listTemperatures = listForeCast.map((e) => e.temp.day).toList();
            final listNext5Days = DateTimeUtil.getNextNeededDays(cnt);
            final dayTemperatures = List.generate(
              listNext5Days.length,
              (index) => DayTemperature(
                day: listNext5Days[index],
                currentTemp: listTemperatures[index],
              ),
            );

            return WeathersState.data(dayTemperatures, cityName);
          },
        );
      },
    );
    _processing = false;
  }
}
