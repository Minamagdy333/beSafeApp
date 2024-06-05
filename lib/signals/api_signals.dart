import 'package:be_safe3/Apis/dio_client.dart';
import 'package:be_safe3/Apis/repository.dart';
import 'package:dio/dio.dart';
import 'package:signals/signals.dart';

final _dio = Dio(
  BaseOptions(
    baseUrl: 'http://minamagdy-001-site1.ktempurl.com/api',
    validateStatus: (status) => status! < 400,
  ),
)..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

final repoSignal = signal(MainRepository(DioClient(_dio)));