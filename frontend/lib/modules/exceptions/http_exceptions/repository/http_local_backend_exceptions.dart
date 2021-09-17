import 'package:api_flutter/repository/i_local_backend_exceptions.dart';
import 'package:api_flutter/shared/http_client_exception_extensions.dart';
import 'package:http/http.dart' as http;

class HttpLocalBackendExceptions implements ILocalBackendExceptions {
  @override
  Future<void> error400() async {
    final result = await http.get(Uri.parse('http://192.168.0.33:3333/400'));
    result.checkIsError();
  }

  @override
  Future<void> error403() async {
    final result = await http.get(Uri.parse('http://192.168.0.33:3333/403'));
    result.checkIsError();
  }

  @override
  Future<void> error500() async {
    final result = await http.get(Uri.parse('http://192.168.0.33:3333/500'));
    result.checkIsError();
  }
}
