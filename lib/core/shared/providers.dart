import 'package:bui_trong_nghia_home_assignment/core/constant/constants.dart';
import 'package:bui_trong_nghia_home_assignment/core/infrastructure/dio_logger_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioLoggerInterceptorProvider = Provider.autoDispose((ref) => DioLoggerInterceptor());

final dioProvider = Provider.autoDispose<Dio>((ref) {
  const timeOut = Duration(seconds: 90);
  return Dio(
    BaseOptions(
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
      sendTimeout: timeOut,
      baseUrl: URLConstants.baseUrl,
    ),
  )..interceptors.add(ref.watch(dioLoggerInterceptorProvider));
});
