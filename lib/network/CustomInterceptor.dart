import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ripetizioni/data/model/apierror/ApiError.dart';
import 'package:ripetizioni/network/ConnectivityController.dart';
import 'package:ripetizioni/network/SessionException.dart';

class CustomInterceptor extends Interceptor {
  final _sessionStorage = GetStorage('session');
  String? _token;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!Get.find<ConnectivityController>().isOnline) {
      return handler.reject(DioError(
          requestOptions: options, error: 'No internet connection available.'));
    } else if (!options.uri.pathSegments.contains('auth')) {
      options.headers.addAll({'cookie': _sessionStorage.read('token')});
    }
    return handler.next(options);
  }

  @override
  void onResponse(response, ResponseInterceptorHandler handler) {
    _token = response.headers.value('set-cookie');
    if (_token != null) {
      _sessionStorage.write('token', _token);
    }
    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        err.error =
            'Could not connect to the server please try again in a few minutes.';
        break;
      case DioErrorType.response:
        ApiError apiError = ApiError.fromJson(err.response!.data);
        err.error = apiError.message;
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        break;
    }
    return handler.next(err);
  }
}
