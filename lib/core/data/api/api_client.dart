import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/di.dart';

// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/error/exceptions.dart';
import 'endpoints.dart';
import 'status_code.dart';

class ApiClient {
  late Dio dio;

  ApiClient() {
    _init();
  }
  headerPReparing() {
    _addTokenIfExists();
    _setLocale();
  }

  _addTokenIfExists() {
    final token = TokenService.getToken();
    if (token == null) return;
    dio.options.headers['Authorization'] = "Bearer $token";
  }

  _setLocale() {
    final local = di<SharedPreferences>().getString(StorageKeys.lang);
    dio.options.headers['Accept-Language'] = local ?? 'ar';
  }

  Future _init() async {
    dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: EndPoints.baseUrl,
        validateStatus: (status) => (status ?? 400) < 400,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    headerPReparing();

    // if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger(requestBody: true));
    // }
  }

  Future<Response<T>> get<T>(String url,
      {Map<String, dynamic>? data, Map<String, dynamic>? parameter}) async {
    try {
      headerPReparing();
      return await dio.get(
        url,
        data: data,
        queryParameters: parameter,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
      // _handleDioError(e);
      // if (exception is NoInternetConnectionException) {
      //
      //   _showNetworkErrorBottomSheet(AppConst.rootScaffoldKey.currentContext!);
      // }
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }

  Future<Response<T>> post<T>(String url,
      {dynamic data, Map<String, dynamic>? parameter}) async {
    try {
      headerPReparing();
      return await dio.post(url, data: data, queryParameters: parameter);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }

  Future<Response<T>> update<T>(String url,
      {Map<String, dynamic>? data, Map<String, dynamic>? parameter}) async {
    try {
      headerPReparing();
      return await dio.patch(url, data: data, queryParameters: parameter);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }

  Future<Response<T>> delete<T>(String url,
      {Map<String, dynamic>? data, Map<String, dynamic>? parameter}) async {
    try {
      headerPReparing();
      return await dio.delete(url, data: data, queryParameters: parameter);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      print("Error: $e");
      rethrow;
    }
  }

  ServerException _handleDioError(DioException error) {
    print('object : ${error.type}');

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return NoInternetConnectionException();
      case DioExceptionType.unknown:
        // Handle network errors
        _showNetworkErrorBottomSheet(
          AppConst.rootScaffoldKey.currentContext!,
        );
        return NoInternetConnectionException();

      case DioExceptionType.cancel:
        // Handle request cancellation
        return ServerException("Request was canceled");

      case DioExceptionType.badResponse:
        // التحقق من كود الحالة للتعامل مع الأخطاء المختلفة
        switch (error.response?.statusCode) {
          case StatusCode.notFound:
            // لخطأ 404، نعيد ServerException بدون عرض رسالة تلقائية
            return ServerException(
                _getErrorMessageFromResponse(error.response?.data), false);
          case StatusCode.badRequest:
          case StatusCode.unprocessableEntity:
          case StatusCode.notAcceptable:
            return BadRequestException(
                _getErrorMessageFromResponse(error.response?.data));
          case StatusCode.unauthorized:
            final responseData = error.response?.data;
            final String? message = responseData?['data'];
            return UnauthorizedException(message);
          case StatusCode.forbidden:
            return ForbiddenException(
                error.response?.data?['isSubscribe']?.toString());
          case StatusCode.internalServerError:
            return InternalServerErrorException();
          default:
            return BadRequestException(
                _getErrorMessageFromResponse(error.response?.data));
        }

      case DioExceptionType.badCertificate:
        return ServerException("Bad Certificate");
    }
  }

  Future<void> _showNetworkErrorBottomSheet(
    BuildContext context,
  ) async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Network error occurred. Please try again.',
                // style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                // onPressed: onRetry,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        );
      },
    );
  }
}

String _getErrorMessageFromResponse(Map<String, dynamic> data) {
  if (data.containsKey('message')) {
    return data['message'];
  } else if (data.containsKey('error')) {
    return data['error'];
  } else if (data.containsKey('errors')) {
    return data['errors'];
  } else if (data.containsKey('data')) {
    return data['data'];
  } else {
    final StringBuffer errorMessage = StringBuffer();
    for (final error in data.values) {
      if (error is List) {
        errorMessage.writeAll(error, ', ');
      } else {
        errorMessage.write(error);
      }
    }
    return errorMessage.toString();
  }
}

class RetryOnConnectionChangedInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
  }
}
