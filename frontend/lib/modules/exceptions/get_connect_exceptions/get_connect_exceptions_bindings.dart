import 'package:api_flutter/repository/i_local_backend_exceptions.dart';
import 'package:api_flutter/shared/rest_client.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import './get_connect_exceptions_controller.dart';
import 'repository/get_connect_local_backend_exceptions.dart';

class GetConnectExceptionsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<ILocalBackendExceptions>(
        GetConnectLocalBackendExceptions(restClient: Get.find()));
    Get.put(GetConnectExceptionsController(repository: Get.find()));
  }
}
