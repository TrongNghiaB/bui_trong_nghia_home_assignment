import 'package:auto_route/auto_route.dart';
import 'package:bui_trong_nghia_home_assignment/weather/presentation/widgets/weather_error_informations.dart';
import 'package:bui_trong_nghia_home_assignment/weather/presentation/widgets/weather_loading.dart';
import 'package:bui_trong_nghia_home_assignment/weather/presentation/widgets/weather_success_informations.dart';
import 'package:bui_trong_nghia_home_assignment/weather/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weathersForecastState = ref.watch(weathersForecastProvider);

    return SafeArea(
      child: weathersForecastState.maybeWhen(
        data: (listDayTemperatures, cityName) => WeatherSuccessInformations(
          listDayTemperatures: listDayTemperatures,
          cityName: cityName,
        ),
        failure: (apiFailure, codeName) => const WeatherErrorInformations(),
        orElse: () => const WeatherLoading(),
      ),
    );
  }
}
