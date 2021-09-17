import 'package:api_flutter/shared/rest_exception.dart';
import 'package:http/http.dart';

extension HttpClientExceptionExtensions on Response {
  void checkIsError() {
    if (statusCode > 399) {
      throw RestException(
        message: reasonPhrase ?? 'Erro',
        statusCode: statusCode,
        response: this,
      );
    }
  }
}
