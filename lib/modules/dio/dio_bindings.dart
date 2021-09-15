import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'dio_controller.dart';
import 'repository/user_repository_dio.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IUserRepository>(UserRepositoryDio(Get.find()));
    Get.put(DioController(Get.find()));
  }
}
