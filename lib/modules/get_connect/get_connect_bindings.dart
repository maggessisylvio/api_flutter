import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:get/get.dart';

import 'get_connect_controller.dart';
import 'repository/user_repository_get_connect.dart';

class GetConnectBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserRepositoryGetConnect(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}
