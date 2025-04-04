import 'package:bui_trong_nghia_home_assignment/core/constant/constants.dart';
import 'package:bui_trong_nghia_home_assignment/core/utils/util.dart';
import 'package:bui_trong_nghia_home_assignment/gen/colors.gen.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/day_temperature.dart';
import 'package:bui_trong_nghia_home_assignment/weather/presentation/widgets/next_day_temperature_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WeatherSuccessInformations extends HookWidget {
  const WeatherSuccessInformations({
    super.key,
    required this.listDayTemperatures,
    required this.cityName,
  });

  final List<DayTemperature> listDayTemperatures;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme.bodyMedium;
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    final offsetY = useState(screenHeight);

    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () {
        offsetY.value = 0;
      });
      return null;
    }, const []);
    return Scaffold(
      backgroundColor: ColorName.defaultBackground,
      body: SizedBox(
        width: screenWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 56),
            Text(
              "${listDayTemperatures.first.currentTemp.roundTo1Decimal()}${AppString.degreeIcon}",
              style: theme?.copyWith(color: ColorName.currentTempTitle, fontSize: 96, fontWeight: FontWeight.w900),
            ),
            Text(
              cityName,
              style: theme?.copyWith(
                color: ColorName.cityNameTitle,
                fontSize: 36,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(height: 62),
            Expanded(
              child: AnimatedContainer(
                width: screenWidth,
                color: Colors.white,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut,
                transform: Matrix4.translationValues(0, offsetY.value, 0), // Moves it up smoothly
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: listDayTemperatures
                        .map(
                          (e) => NextDayTemperatureField(
                            temperature: e.currentTemp.roundTo1Decimal(),
                            day: e.day,
                          ),
                        )
                        .toList(),
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
