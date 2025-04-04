import 'package:bui_trong_nghia_home_assignment/core/utils/location_util.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weather_forecast_response.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/model/weathers_forecast_request.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/repository/weathers_forecast_repository.dart';
import 'package:bui_trong_nghia_home_assignment/weather/infrastructure/services/weathers_forecast_service.dart';
import 'package:bui_trong_nghia_home_assignment/weather/utils/mock_data.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockDio extends Mock implements Dio {}

class MockWeathersForecastService extends Mock implements WeathersForecastService {}

class MockWeathersForecastRepository extends Mock implements WeathersForecastRepository {}

class MockLocationUtil extends Mock implements LocationUtil {}

class MockDotEnv extends Mock implements DotEnv {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late MockDio mockDio;
  late MockWeathersForecastService mockService;

  // Sample test data
  const testRequest = WeathersForecastRequest(
    apiKey: 'test_api_key',
    lat: 12.345,
    lon: 67.890,
    cnt: 5,
  );

  final testResponse = WeatherForecastResponse(
    list: List.generate(
      5,
      (index) => Forecast(temp: Temperature(day: 20.0 + index)),
    ),
  );

  // );

  setUp(() {
    mockDio = MockDio();
    mockService = MockWeathersForecastService();
  });

  group('WeathersForecastService tests', () {
    test('getWeathersForecast returns success response', () async {
      // Arrange
      final dioResponse = Response(
        data: mockData,
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );

      when(() => mockDio.post(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => dioResponse);

      final service = WeathersForecastService(mockDio);

      // Act
      final result = await service.getWeathersForecast(testRequest);

      // Assert
      expect(result.isRight(), true);
      verify(() => mockDio.post(
            "forecast/daily",
            queryParameters: {
              "lat": testRequest.lat,
              "lon": testRequest.lon,
              "cnt": testRequest.cnt,
              "appid": testRequest.apiKey,
              "units": "metric",
            },
          )).called(1);
    });

    test('getWeathersForecast handles DioException', () async {
      // Arrange
      when(() => mockDio.post(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'Network error',
      ));

      final service = WeathersForecastService(mockDio);

      // Act
      final result = await service.getWeathersForecast(testRequest);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure.message, 'Network error'),
        (_) => fail('Should return failure'),
      );
    });

    test('getWeathersForecast handles parsing error', () async {
      // Arrange
      final dioResponse = Response(
        data: {'invalid_data': 'not_valid_json_format'},
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );

      when(() => mockDio.post(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => dioResponse);

      final service = WeathersForecastService(mockDio);

      // Act
      final result = await service.getWeathersForecast(testRequest);

      // Assert
      expect(result.isLeft(), true);
    });
  });

  group('WeathersForecastRepository tests', () {
    test('getWeathersForecast calls service and returns result', () async {
      // Arrange
      when(() => mockService.getWeathersForecast(testRequest)).thenAnswer((_) async => right(testResponse));

      final repository = WeathersForecastRepository(mockService);

      // Act
      final result = await repository.getWeathersForecast(testRequest);

      // Assert
      expect(result.isRight(), true);
      verify(() => mockService.getWeathersForecast(testRequest)).called(1);
    });
  });
}
