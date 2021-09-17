import 'package:api_flutter/repository/i_local_backend_exceptions.dart';
import 'package:api_flutter/shared/rest_client.dart';
import 'package:api_flutter/shared/rest_exception.dart';

class GetConnectLocalBackendExceptions implements ILocalBackendExceptions {
  final RestClient restClient;

  GetConnectLocalBackendExceptions({required this.restClient});

  @override
  Future<void> error400() async {
    final result = await restClient.get('http://192.168.0.33:3333/400');

    if (result.hasError) {
      throw RestException(
          message: result.statusText ?? 'Erro',
          statusCode: result.statusCode ?? 0);
    }
  }

  @override
  Future<void> error403() async {
    final result = await restClient.get('http://192.168.0.33:3333/403');

    if (result.hasError) {
      throw RestException(
          message: result.statusText ?? 'Erro',
          statusCode: result.statusCode ?? 0);
    }
  }

  @override
  Future<void> error500() async {
    final result = await restClient.get('http://192.168.0.33:3333/500');

    if (result.hasError) {
      throw RestException(
          message: result.statusText ?? 'Erro',
          statusCode: result.statusCode ?? 0);
    }
  }
}
