import 'package:api_flutter/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dio_controller.dart';

class DioPage extends GetView<DioController> {
  const DioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIO Page'),
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title: Text(item.name),
              );
            },
          );
        },
        onError: (error) {
          return Center(child: Text('Erro: $error'));
        },
      ),
    );
  }
}
