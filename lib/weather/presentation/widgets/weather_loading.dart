import 'package:bui_trong_nghia_home_assignment/gen/assets.gen.dart';
import 'package:bui_trong_nghia_home_assignment/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WeatherLoading extends HookWidget {
  const WeatherLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 1),
    )..repeat();

    return Scaffold(
      backgroundColor: ColorName.defaultBackground,
      body: Center(
        child: SizedBox(
          width: 96,
          height: 96,
          child: RotationTransition(
            turns: controller,
            child: Assets.images.icLoading.image(),
          ),
        ),
      ),
    );
  }
}
