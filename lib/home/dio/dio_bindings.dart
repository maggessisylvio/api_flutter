import 'package:api_flutter/home/dio/dio_controller.dart';
import 'package:api_flutter/home/dio/repository/user_repository_dio.dart';
import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IUserRepository>(UserRepositoryDio(Get.find()));
    Get.put(DioController(Get.find()));
  }
}
