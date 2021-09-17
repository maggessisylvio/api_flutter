import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './exceptions_controller.dart';

class ExceptionsPage extends GetView<ExceptionsController> {
  const ExceptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia acesso API Exceptions'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/exceptions/http'),
              child: const Text(
                'HTTP',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/exceptions/dio'),
              child: const Text(
                'DIO',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/exceptions/getconnect'),
              child: const Text(
                'GetConnect',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
