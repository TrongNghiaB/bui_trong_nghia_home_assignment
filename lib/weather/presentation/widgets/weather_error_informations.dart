import 'package:bui_trong_nghia_home_assignment/core/constant/constants.dart';
import 'package:bui_trong_nghia_home_assignment/gen/colors.gen.dart';
import 'package:bui_trong_nghia_home_assignment/weather/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeatherErrorInformations extends ConsumerWidget {
  const WeatherErrorInformations({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme.bodyMedium;
    return Scaffold(
      backgroundColor: ColorName.errorBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.somethingWentWrongAtOurEnd,
              textAlign: TextAlign.center,
              style: theme?.copyWith(color: Colors.white, fontSize: 54, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 44),
            GestureDetector(
              onTap: () {
                ref.read(weathersForecastProvider.notifier).getWeathersForecast();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: ColorName.errorTitle,
                ),
                child: Text(
                  AppString.retry,
                  style: theme?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
