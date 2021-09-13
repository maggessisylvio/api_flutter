import 'package:api_flutter/home/http/http_controller.dart';
import 'package:api_flutter/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP'),
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
