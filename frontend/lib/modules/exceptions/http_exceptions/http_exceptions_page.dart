import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './http_exceptions_controller.dart';

class HttpExceptionsPage extends GetView<HttpExceptionsController> {
  const HttpExceptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Exceptions Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => controller.error500(),
              child: const Text('500'),
            ),
            TextButton(
              onPressed: () => controller.error403(),
              child: const Text('403'),
            ),
            TextButton(
              onPressed: () => controller.error400(),
              child: const Text('400'),
            ),
          ],
        ),
      ),
    );
  }
}
