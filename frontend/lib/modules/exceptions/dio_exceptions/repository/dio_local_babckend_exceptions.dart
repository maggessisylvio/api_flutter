import 'package:api_flutter/repository/i_local_backend_exceptions.dart';
import 'package:api_flutter/shared/rest_exception.dart';
import 'package:dio/dio.dart';

class DioLocalBackendExceptions implements ILocalBackendExceptions {
  @override
  Future<void> error400() async {
    try {
      await Dio().get('http://192.168.0.33:3333/400');
    } on DioError catch (e) {
      throw RestException(
          message: e.error, statusCode: e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<void> error403() async {
    try {
      await Dio().get('http://192.168.0.33:3333/403');
    } on DioError catch (e) {
      throw RestException(
          message: e.error, statusCode: e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<void> error500() async {
    try {
      await Dio().get('http://192.168.0.33:3333/500');
    } on DioError catch (e) {
      throw RestException(
          message: e.error, statusCode: e.response?.statusCode ?? 0);
    }
  }
}
