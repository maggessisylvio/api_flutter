import 'package:api_flutter/repository/i_local_backend_exceptions.dart';
import 'package:get/get.dart';
import './dio_exceptions_controller.dart';
import 'repository/dio_local_babckend_exceptions.dart';

class DioExceptionsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ILocalBackendExceptions>(DioLocalBackendExceptions());
    Get.put(DioExceptionsController(repository: Get.find()));
  }
}
