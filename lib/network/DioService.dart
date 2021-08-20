import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/network/CustomInterceptor.dart';

class DioService extends GetxService {

  Future<Dio> init() async {
    Dio dio = Dio();
    await _initOptions(dio);
    await _initInterceptors(dio);
    return dio;
  }

  _initOptions(Dio dio) {
    dio.options.connectTimeout = 10000;
    dio.options.receiveTimeout = 10000;
  }

  _initInterceptors(Dio dio) {
    dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        request: true,
        requestHeader: true,
        responseHeader: true));
    dio.interceptors.add(CustomInterceptor());
  }
}
