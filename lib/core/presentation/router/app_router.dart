import 'package:auto_route/auto_route.dart';
import 'package:bui_trong_nghia_home_assignment/weather/presentation/weather_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: WeatherRoute.page, path: "/weathers_forecast", initial: true),
  ];
}

final appRouter = AppRouter();
