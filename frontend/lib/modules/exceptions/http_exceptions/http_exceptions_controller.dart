import 'package:api_flutter/shared/rest_exception.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:api_flutter/repository/i_local_backend_exceptions.dart';

class HttpExceptionsController extends GetxController {
  ILocalBackendExceptions repository;
  HttpExceptionsController({
    required this.repository,
  });

  Future<void> error400() async {
    try {
      await repository.error400();
    } on RestException catch (e) {
      Get.snackbar(
        'Erro ${e.statusCode}',
        e.message,
        backgroundColor: Colors.red.withOpacity(0.8),
      );
    }
  }

  Future<void> error403() async {
    try {
      await repository.error403();
    } on RestException catch (e) {
      Get.snackbar(
        'Erro ${e.statusCode}',
        e.message,
        backgroundColor: Colors.red.withOpacity(0.8),
      );
    }
  }

  Future<void> error500() async {
    try {
      await repository.error500();
    } on RestException catch (e) {
      Get.snackbar(
        'Erro ${e.statusCode}',
        e.message,
        backgroundColor: Colors.red.withOpacity(0.8),
      );
    }
  }
}
