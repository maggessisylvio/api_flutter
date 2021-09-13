import 'package:api_flutter/shared/rest_client.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}
